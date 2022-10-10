import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/pack_core.dart';
import 'package:word_by_word_game/pack_game/dialogs/dialogs.dart';

class _DialogStateDiDto {
  _DialogStateDiDto.use(final Locator read) : levelBloc = read();
  final LevelBloc levelBloc;
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

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();

  //   _suggestedWord = diDto.levelBloc.getLiveState().getWordSuggestion();
  // }

  String _suggestedWord = '';

  String get suggestedWord => _suggestedWord;

  set suggestedWord(final String suggestedWord) {
    _suggestedWord = suggestedWord;
    setState();
  }

  bool isWordRevealed = false;

  void onRevealWord() {
    isWordRevealed = true;
    setState();
  }

  void onUseWord() {
    // TODO(arenukvern):
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
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(uiTheme.spacing.extraLarge),
          children: [
            Text(
              'Use Your Score to reveal suggested word',
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
                    AppRouterController.use(context.read).toAllLevel();
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
        ),
      ),
    );
  }
}
