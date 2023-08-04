import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/widgets/widgets.dart';

class _DialogStateDiDto {
  _DialogStateDiDto.use(final Locator read)
      : levelBloc = read(),
        levelPlayersBloc = read(),
        dialogController = read(),
        mechanics = read();
  final LevelBloc levelBloc;
  final LevelPlayersBloc levelPlayersBloc;
  final DialogController dialogController;
  final MechanicsCollection mechanics;
}

_DialogState _useDialogState({required final Locator read}) => use(
      LifeHook(
        debugLabel: '_DialogState',
        state: _DialogState(diDto: _DialogStateDiDto.use(read)),
      ),
    );

class _DialogState extends LifeState {
  _DialogState({
    required this.diDto,
  });

  final _DialogStateDiDto diDto;

  @override
  void initState() {
    super.initState();
    onTryAnotherWord();
  }

  String suggestedWord = '';

  bool isWordRevealed = false;
  void onRevealWord() {
    isWordRevealed = true;
    setState();
    final currentPlayerId = diDto.levelPlayersBloc.state.currentPlayerId;
    final event = UpdatePlayerHighscoreEvent(
      playerId: currentPlayerId,
      score: ScoreModel(value: -costOfWord.toDouble()),
    );
    diDto.levelPlayersBloc.onUpdatePlayerHighscore(event);
  }

  void onTryAnotherWord() {
    suggestedWord = diDto.levelBloc.getWordSuggestion();
    _setCostOfWord();
    setState();
  }

  bool get isUsageAvailable {
    final playerScore =
        diDto.levelPlayersBloc.state.currentPlayer.highscore.score.value;
    return playerScore > costOfWord;
  }

  int costOfWord = 0;
  void _setCostOfWord() {
    final score = diDto.mechanics.score.getRevealScore(word: suggestedWord);
    costOfWord = score.value.toInt();
  }
}

class LevelWordSuggestionDialog extends HookWidget {
  const LevelWordSuggestionDialog({
    super.key,
  });

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    final uiTheme = UiTheme.of(context);

    final state = _useDialogState(read: context.read);
    final cancelButton = TextButton(
      onPressed: () {
        context.read<DialogController>().closeDialog();
      },
      child: Text(S.of(context).back),
    );
    return DialogScaffold(
      builder: (final context) {
        if (state.suggestedWord.isEmpty) {
          return ListView(
            shrinkWrap: true,
            padding: EdgeInsets.all(uiTheme.spacing.extraLarge),
            children: [
              Text(
                S.of(context).noWordsSuggestions,
                style: theme.textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
              uiTheme.verticalBoxes.extraLarge,
              Text(
                S.of(context).tryWithDifferentLetters,
                textAlign: TextAlign.center,
              ),
              uiTheme.verticalBoxes.extraLarge,
              cancelButton
            ],
          );
        }

        if (state.isWordRevealed) {
          return ListView(
            shrinkWrap: true,
            padding: EdgeInsets.all(uiTheme.spacing.extraLarge),
            children: [
              Text(
                S.of(context).suggestedWord,
                style: theme.textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
              uiTheme.verticalBoxes.extraLarge,
              Text(
                state.suggestedWord,
                style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              uiTheme.verticalBoxes.extraLarge,
              TextButton(
                onPressed: () {
                  context.read<DialogController>().closeDialog();
                },
                child: Text(S.of(context).ok),
              )
            ],
          );
        }

        return ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(uiTheme.spacing.extraLarge),
          children: [
            Text(
              S.of(context).revealSuggestedWord,
              style: theme.textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            uiTheme.verticalBoxes.large,
            Text(
              List.generate(
                state.suggestedWord.length,
                (final index) => '*',
              ).join(),
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            uiTheme.verticalBoxes.medium,
            TextButton(
              onPressed: state.isUsageAvailable ? state.onRevealWord : null,
              child: Text(
                state.isUsageAvailable
                    ? S.of(context).useCostKnowledgePoints(state.costOfWord)
                    : S.of(context).notEnoughKnowledgeToRevealWord,
              ),
            ),
            if (!state.isUsageAvailable) ...[
              uiTheme.verticalBoxes.medium,
              TextButton(
                onPressed: state.onTryAnotherWord,
                child: Text(S.of(context).tryAnotherWord),
              ),
            ],
            uiTheme.verticalBoxes.small,
            cancelButton,
          ],
        );
      },
    );
  }
}
