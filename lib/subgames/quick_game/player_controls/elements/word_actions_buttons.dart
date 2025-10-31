import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/router.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/overlays/gui_widgets/gui_widgets.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/word_composition_bar/word_composition_bar.dart';
import 'package:word_by_word_game/subgames/subgames.dart';

class UiWordActions extends StatelessWidget {
  const UiWordActions({super.key});
  @override
  Widget build(final BuildContext context) {
    final state = context.read<GuiWordCompositionCubit>();
    final phaseType = context.select<LevelBloc, GamePhaseType>(
      (final s) => s.state.phaseType,
    );
    final List<Widget> children = switch (phaseType) {
      GamePhaseType.entryWord => [
        Expanded(
          child: Center(
            child: TutorialFrame(
              highlightPosition: Alignment.topCenter,
              uiKey: TutorialUiItem.addToDictionaryButton,
              child: UIAddWordToDictionaryButton(
                onPressed: state.onAddWordToDictionary,
              ),
            ),
          ),
        ),
        const TutorialFrame(
          highlightPosition: Alignment.topCenter,
          uiKey: TutorialUiItem.suggestWordButton,
          child: UiSuggestionsButton(),
        ),
        const Expanded(child: Center(child: UiPauseButton())),
      ],
      GamePhaseType.selectAction => [],
    };

    return MediaQuery(
      data: MediaQuery.of(
        context,
      ).copyWith(devicePixelRatio: 1, textScaler: TextScaler.noScaling),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: children,
        ),
      ),
    );
  }
}

class ActionConfirmWordButton extends StatelessWidget {
  const ActionConfirmWordButton({super.key});

  @override
  Widget build(final BuildContext context) {
    final phaseType = context.select<LevelBloc, GamePhaseType>(
      (final s) => s.state.phaseType,
    );
    if (phaseType case GamePhaseType.entryWord) {
      return TutorialFrame(
        highlightPosition: Alignment.topCenter,
        uiKey: TutorialUiItem.confirmWordButton,
        child: UiConfirmWordButton(
          onPressed: () async => UILevelCenterBar.onConfirmWord(context),
        ).animate().fadeIn(),
      );
    }
    return const SizedBox();
  }
}

class UIAddWordToDictionaryButton extends StatelessWidget {
  const UIAddWordToDictionaryButton({required this.onPressed, super.key});
  final VoidCallback onPressed;
  @override
  Widget build(final BuildContext context) {
    final warning = context.select<LevelBloc, WordWarning>(
      (final s) => s.state.wordWarning,
    );
    return Tooltip(
      message: S.of(context).addToDictionary,
      child: FilledButton.tonal(
        onPressed: warning == WordWarning.isNotCorrect ? onPressed : null,
        child: const UiIcon.asset(icon: UiAssetsIcons.dictionary_add),
      ),
    );
  }
}

class UiConfirmWordButton extends StatelessWidget {
  const UiConfirmWordButton({required this.onPressed, super.key});
  final VoidCallback onPressed;
  @override
  Widget build(final BuildContext context) {
    final warning = context.select<LevelBloc, WordWarning>(
      (final s) => s.state.wordWarning,
    );
    final currentWord = context.select<LevelBloc, String>(
      (final s) => s.state.currentWord.fullWord,
    );
    final textTheme = context.textTheme;
    final mechanics = context.read<MechanicsCollection>();
    final score = mechanics.score.getScoreFromWord(word: currentWord);
    final isPressable = warning != WordWarning.isNotCorrect;
    return GestureDetector(
      onTap: isPressable ? onPressed : null,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Tooltip(
            message: S.of(context).powerOfEnteredWord,
            child: UiTextCounter(
              prefix: '+',
              value: score.value ~/ kScoreFactor,
              style: textTheme.bodySmall,
            ),
          ),
          const Gap(6),
          FloatingActionButton.small(
            tooltip: S.of(context).confirm,
            elevation: 1,
            backgroundColor: Theme.of(context).colorScheme.tertiaryContainer
                .withOpacity(isPressable ? 0.8 : 0.1),
            hoverElevation: 3,
            onPressed: isPressable ? onPressed : null,
            // child: Container(
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: AssetImage(
            //         UiAssetHelper.useImagePath(UiIcons.fire.path),
            //       ),
            //     ),
            //   ),
            // ),
            child: const UiPlayerScoreIcon(size: 24),
          ),
        ],
      ),
    );
  }
}

class UIToEndTurnButton extends StatelessWidget {
  const UIToEndTurnButton({required this.onPressed, super.key});
  final VoidCallback onPressed;
  @override
  Widget build(final BuildContext context) => UiTextButton.icon(
    text: S.of(context).applyAndEndTurn,
    onPressed: onPressed,
    icon: UiAssetsIcons.fire,
    mainAlignment: MainAxisAlignment.center,
    isLongButton: true,
  );
}

class UiSuggestionsButton extends StatelessWidget {
  const UiSuggestionsButton({super.key});
  @override
  Widget build(final BuildContext context) {
    final locale = useLocale(context);
    return UiTextButton.icon(
      isLongButton: true,
      text: LocalizedMap({
        /// Other naming suggestions:
        ///
        /// Word Spiriter
        /// Word Wizard
        /// Word Generator
        /// Inpire me
        ///
        /// Old: suggestions
        uiLanguages.en: 'Word Inspirer',
        uiLanguages.ru: 'Вдохновлятор',
        uiLanguages.it: 'Inspiratore',
      }).getValue(locale),
      tooltip: S.of(context).suggestWordButtonTooltip,
      onPressed: () {
        context.read<DialogController>().showLevelWordSuggestionDialog();
      },
      icon: UiAssetsIcons.idea,
    );
  }
}

class UiPauseButton extends StatelessWidget {
  const UiPauseButton({super.key});

  @override
  Widget build(final BuildContext context) => TutorialFrame(
    highlightPosition: Alignment.topCenter,
    uiKey: TutorialUiItem.pauseIconButton,
    child: UiIconButton(
      tooltip: S.of(context).mainMenuButtonTooltip,
      onPressed: () async {
        final globalGameBloc = context.read<GlobalGameBloc>();
        final levelBloc = context.read<LevelBloc>();
        final appRouterController = AppPathsController.of(context);

        context.read<StatesStatusesCubit>().pause();

        await globalGameBloc.onSaveCurrentLevel();
        final id = levelBloc.state.id;
        appRouterController.toPause(id: id);
      },
      icon: UiAssetsIcons.pause,
    ),
  );
}
