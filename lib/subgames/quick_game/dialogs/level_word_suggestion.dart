import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_dictionaries/wbw_dictionaries.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';

class _DialogStateDiDto {
  _DialogStateDiDto.use(final Locator read)
      : levelBloc = read(),
        levelPlayersBloc = read(),
        dialogController = read(),
        wbwDictionary = read(),
        mechanics = read();
  final LevelBloc levelBloc;
  final WbwDictionary wbwDictionary;
  final LevelPlayersBloc levelPlayersBloc;
  final DialogController dialogController;
  final MechanicsCollection mechanics;
}

class _DialogState extends ValueNotifier<bool> {
  _DialogState({required this.dto}) : super(false) {
    onLoad();
  }
  void onLoad() {
    WidgetsBinding.instance.addPostFrameCallback(
      (final timeStamp) async => onTryAnotherWord(),
    );
  }

  bool _isMounted = true;
  @override
  void dispose() {
    _isMounted = false;
    super.dispose();
  }

  final _DialogStateDiDto dto;

  String _suggestedWord = '';
  String _suggestedWordMeaning = '';

  bool _isWordRevealed = false;
  void onRevealWord() {
    _isWordRevealed = true;
    notifyListeners();
    final currentPlayerId = dto.levelPlayersBloc.state.currentPlayerId;
    final event = UpdatePlayerHighscoreEvent(
      playerId: currentPlayerId,
      score: ScoreModel(value: -costOfWord.toDouble()),
    );
    dto.levelPlayersBloc.onUpdatePlayerHighscore(event);
  }

  Future<void> onTryAnotherWord() async {
    _suggestedWordMeaning = '';
    _suggestedWord = dto.levelBloc.getWordSuggestion();
    _setCostOfWord();
    if (_isMounted) notifyListeners();
    // TODO(arenukvern): not good solution, but may work:)
    final result =
        await dto.wbwDictionary.getWordMeaningCheckAll(_suggestedWord);
    if (result != null && result.meaning.isNotEmpty) {
      _suggestedWordMeaning = result.meaning;
      if (_isMounted) notifyListeners();
    }
  }

  double get _playerHighscore =>
      dto.levelPlayersBloc.state.currentPlayer.highscore.score.value;
  int get userScore => _playerHighscore ~/ kScoreFactor;
  bool get isUsageAvailable => _playerHighscore > costOfWord;

  int costOfWord = 0;
  void _setCostOfWord() {
    final score = dto.mechanics.score.getRevealScore(word: _suggestedWord);
    costOfWord = score.value.toInt();
  }
}

class LevelWordSuggestionDialog extends HookWidget {
  const LevelWordSuggestionDialog({super.key});

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    final uiTheme = context.uiTheme;
    final dialogController = context.read<DialogController>();
    final state = useStateBuilder(
      () => _DialogState(dto: _DialogStateDiDto.use(context.read)),
    );
    final fadeColor = context.colorScheme.onPrimaryContainer.withOpacity(0.6);
    final wordMeaning = AnimatedSize(
      duration: 350.milliseconds,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: state._suggestedWordMeaning.isEmpty
            ? []
            : [
                const Gap(12),
                Row(
                  children: [
                    const Gap(6),
                    Expanded(child: Divider(color: fadeColor)),
                    const Gap(16),
                    Text(
                      // TODO(arenukvern): l10n
                      'Meaning',
                      style: context.textTheme.labelMedium?.copyWith(
                        color: fadeColor,
                      ),
                    ),
                    const Gap(16),
                    Expanded(child: Divider(color: fadeColor)),
                    const Gap(6),
                  ],
                ),
                const Gap(16),
                Text(
                  state._suggestedWordMeaning,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontStyle: FontStyle.italic,
                  ),
                ).animate().fadeIn(),
                const Gap(14),
                Divider(color: fadeColor, endIndent: 8, indent: 8),
                const Gap(4),
              ],
      ),
    );
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: DialogScaffold(
            builder: (final context) {
              if (state._suggestedWord.isEmpty) {
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
                  ],
                );
              }

              if (state._isWordRevealed) {
                return ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.all(uiTheme.spacing.extraLarge),
                  children: [
                    Text(
                      S.of(context).suggestedWord,
                      style: theme.textTheme.titleMedium,
                      textAlign: TextAlign.center,
                    ),
                    uiTheme.verticalBoxes.large,
                    Text(
                      state._suggestedWord,
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    uiTheme.verticalBoxes.large,
                    wordMeaning,
                    uiTheme.verticalBoxes.extraLarge,
                    TextButton(
                      onPressed: dialogController.closeDialogAndResume,
                      child: Text(S.of(context).ok),
                    ),
                  ],
                );
              }
              return ListView(
                shrinkWrap: true,
                padding: EdgeInsets.all(uiTheme.spacing.extraLarge),
                children: [
                  Text(
                    S.of(context).revealSuggestedWord.toUpperCase(),
                    style: context.textThemeBold.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                  uiTheme.verticalBoxes.large,
                  Text(
                    List.generate(
                      state._suggestedWord.length,
                      (final index) => '*',
                    ).join(),
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  wordMeaning,
                  _UsePointsButton(
                    onPressed: state.onRevealWord,
                    isUsageAvailable: state.isUsageAvailable,
                    costOfWord: state.costOfWord,
                    userScore: state.userScore,
                  ),
                  uiTheme.verticalBoxes.medium,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      UiOutlinedButton(
                        onPressed: null,
                        child: Row(
                          children: [
                            if (state.isUsageAvailable) ...[
                              const Icon(Icons.remove_red_eye_outlined),
                              const Gap(8),
                            ],
                            Text(
                              // TODO(arenukvern): l10n
                              (state.isUsageAvailable
                                      ? 'Use Score'
                                      : 'Not enough Score')
                                  .toUpperCase(),
                              style: context.textTheme.labelLarge,
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: state.onTryAnotherWord,
                        child: Text(S.of(context).tryAnotherWord),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
        Positioned(
          bottom: 6,
          right: 0,
          left: 0,
          child: Center(
            child: Card(
              shape: const CircleBorder(),
              elevation: 2,
              child: IconButton.outlined(
                onPressed: dialogController.closeDialogAndResume,
                icon: const Icon(Icons.close),
              ),
            ),
          ),
        ).animate().fadeIn(),
      ],
    );
  }
}

class _UsePointsButton extends StatelessWidget {
  const _UsePointsButton({
    required this.costOfWord,
    required this.userScore,
    required this.isUsageAvailable,
    required this.onPressed,
  });
  final VoidCallback onPressed;
  final bool isUsageAvailable;
  final int costOfWord;
  final int userScore;

  @override
  Widget build(final BuildContext context) {
    final wordCost = costOfWord ~/ kScoreFactor;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          // TODO(arenukvern): l10n
          'Score Cost',
          style: context.textTheme.labelLarge,
        ),
        const Gap(12),
        Text(
          isUsageAvailable ? '$wordCost' : '$userScore / $wordCost',
          style: context.textTheme.headlineSmall,
        ),
      ],
    );
  }
}

class UiOutlinedButton extends StatelessWidget {
  const UiOutlinedButton({
    required this.onPressed,
    required this.child,
    super.key,
  });
  final VoidCallback? onPressed;
  final Widget child;

  @override
  Widget build(final BuildContext context) => UiBaseButton(
        onPressed: onPressed,
        child: Card.outlined(
          elevation: onPressed == null ? null : 4,
          child: Container(
            padding: const EdgeInsets.all(8),
            alignment: Alignment.center,
            child: child,
          ),
        ),
      );
}
