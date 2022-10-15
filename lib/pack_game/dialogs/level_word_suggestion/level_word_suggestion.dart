import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_game/dialogs/dialogs.dart';

class _DialogStateDiDto {
  _DialogStateDiDto.use(final Locator read)
      : levelBloc = read(),
        dialogController = read();
  final LevelBloc levelBloc;
  final DialogController dialogController;
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

    suggestedWord = diDto.levelBloc.getWordSuggestion();
  }

  String suggestedWord = '';

  bool isWordRevealed = false;

  void onRevealWord() {
    isWordRevealed = true;
    setState();
  }

  void onUseWord() {
    diDto.levelBloc.add(
      AcceptNewWordEvent(
        word: CurrentWordModel(
          fullWord: suggestedWord,
        ),
      ),
    );
    diDto.dialogController.closeDialog();
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

    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 450,
      ),
      child: Card(
        child: Builder(
          builder: (final context) {
            if (state.suggestedWord.isEmpty) {
              return const Center(
                child: Text(
                  'There is no words suggestions..\n Try with diffirent letters time.',
                ),
              );
            }
            return ListView(
              shrinkWrap: true,
              padding: EdgeInsets.all(uiTheme.spacing.extraLarge),
              children: [
                Text(
                  'Use Your Score to reveal suggested word.',
                  style: theme.textTheme.titleLarge,
                ),
                uiTheme.verticalBoxes.extraLarge,
                Text(
                  'Suggested Word is: '
                  '${state.isWordRevealed ? state.suggestedWord : '***'}',
                ),
                uiTheme.verticalBoxes.extraLarge,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        context.read<DialogController>().closeDialog();
                      },
                      child: const Text('Cancel'),
                    ),
                    if (state.isWordRevealed)
                      TextButton(
                        onPressed: state.onUseWord,
                        child: const Text('Use the word'),
                      )
                    else
                      TextButton(
                        onPressed: state.onRevealWord,
                        child: const Text('Reveal the word'),
                      ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
