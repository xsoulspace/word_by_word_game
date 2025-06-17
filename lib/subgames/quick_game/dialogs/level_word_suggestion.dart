import 'package:provider/provider.dart';
import 'package:wbw_dictionaries/wbw_dictionaries.dart';
import 'package:word_by_word_game/common_imports.dart';
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
    final result = await dto.wbwDictionary.getWordMeaningCheckAll(
      _suggestedWord,
    );
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
    final locale = useLocale(context);
    final dialogController = context.read<DialogController>();
    final state = useStateBuilder(
      () => _DialogState(dto: _DialogStateDiDto.use(context.read)),
    );
    final currentWord = context.select<LevelBloc, CurrentWordModel>(
      (final c) => c.state.currentWord,
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
                      LocalizedMap(
                        value: {
                          languages.en: 'Meaning',
                          languages.ru: 'Значение',
                          languages.it: 'Meaning',
                        },
                      ).getValue(locale),
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
    return DialogScaffold(
      builder: (final context) {
        if (state._suggestedWord.isEmpty) {
          return ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(UiSpace.extraLarge),
            children: [
              Text(
                S.of(context).noWordsSuggestions,
                style: theme.textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
              UiGaps.extraLarge,
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
            padding: const EdgeInsets.all(UiSpace.extraLarge),
            children: [
              Text(
                S.of(context).suggestedWord.toUpperCase(),
                style: theme.textTheme.titleSmall,
                textAlign: TextAlign.center,
              ),
              UiGaps.large,
              Text(
                state._suggestedWord.toUpperCase(),
                style: context.textThemeBold.headlineSmall,
                textAlign: TextAlign.center,
              ),
              UiGaps.large,
              wordMeaning,
            ],
          );
        }
        return ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(UiSpace.extraLarge),
          children: [
            Text(
              S.of(context).revealSuggestedWord.toUpperCase(),
              style: context.textThemeBold.titleMedium,
              textAlign: TextAlign.center,
            ),
            UiGaps.large,
            DefaultTextStyle.merge(
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
              child: Builder(
                builder: (final context) {
                  final children = <Widget>[];
                  final parts = state._suggestedWord
                      .split(currentWord.middlePart)
                      .map(
                        (final e) => Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            e.characters.map((final e) => '*').join(),
                          ),
                        ),
                      );
                  children
                    ..add(parts.first)
                    ..add(
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: Text(currentWord.middlePart),
                      ),
                    );
                  if (parts.length > 1) {
                    children.add(parts.last);
                  }

                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: children,
                  );
                },
              ),
            ),
            // Text(

            //       ,
            //   // List.generate(
            //   //   state._suggestedWord.length,
            //   //   (final index) => '*',
            //   // ).join(),

            //   textAlign: TextAlign.center,
            // ),
            wordMeaning,
            UiGaps.medium,
            _UsePointsButton(
              word: state._suggestedWord,
              onPressed: state.onRevealWord,
              isUsageAvailable: state.isUsageAvailable,
              costOfWord: state.costOfWord,
              userScore: state.userScore,
            ),
            UiGaps.large,
            Row(
              children: [
                Expanded(
                  child: UiOutlinedButton(
                    onPressed: state.isUsageAvailable
                        ? state.onRevealWord
                        : null,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          LocalizedMap(
                            value: {
                              languages.en: 'Use Score',
                              languages.ru: 'Применить очки',
                              languages.it: 'Usa punteggio',
                            },
                          ).getValue(locale),
                          style: context.textTheme.labelLarge,
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(24),
                Expanded(
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 200),
                    child: TextButton(
                      onPressed: state.onTryAnotherWord,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Text(
                              LocalizedMap(
                                value: {
                                  languages.en: 'Roll a Chance',
                                  languages.ru: 'Бросить шанс',
                                  languages.it: 'Tira la possibilità',
                                },
                              ).getValue(locale),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
      bottomButton: UiCircleCloseButton(
        onPressed: dialogController.closeDialogAndResume,
        icon: state._isWordRevealed ? Icons.done : null,
      ),
    );
  }
}

class UiCircleCloseButton extends StatelessWidget {
  const UiCircleCloseButton({required this.onPressed, this.icon, super.key});
  final VoidCallback onPressed;
  final IconData? icon;
  @override
  Widget build(final BuildContext context) {
    final locale = useLocale(context);
    return UiStyledButton(
      tooltip: LocalizedMap(
        value: {
          languages.en: 'Close (X or ESC)',
          languages.ru: 'Закрыть (X или ESC)',
          languages.it: 'Chiudi (X o ESC)',
        },
      ).getValue(locale),
      onPressed: onPressed,
      icon: icon,
      padding: icon != null
          ? null
          : const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
      labelChild: icon != null ? null : const Text('X'),
      focusIcon: null,
      styleType: ButtonStyleType.outlined,
    );
  }
}

class _UsePointsButton extends StatelessWidget {
  const _UsePointsButton({
    required this.costOfWord,
    required this.userScore,
    required this.isUsageAvailable,
    required this.onPressed,
    required this.word,
  });
  final VoidCallback onPressed;
  final bool isUsageAvailable;
  final int costOfWord;
  final int userScore;
  final String word;

  @override
  Widget build(final BuildContext context) {
    final wordCost = costOfWord ~/ kScoreFactor;
    final fadeColor = context.colorScheme.onPrimaryContainer.withOpacity(0.6);
    final locale = useLocale(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            LocalizedMap(
              value: {
                languages.en: 'Your Score',
                languages.ru: 'Твои очки',
                languages.it: 'Punteggio',
              },
            ).getValue(locale),
            style: context.textThemeBold.labelLarge?.copyWith(color: fadeColor),
            textAlign: TextAlign.right,
          ),
        ),
        const Gap(12),
        Text(
          '$userScore / $wordCost',
          style: context.textTheme.headlineMedium?.copyWith(
            color: isUsageAvailable
                ? context.colorScheme.primary
                : context.colorScheme.error.withOpacity(0.8),
          ),
        ).animate(key: ValueKey(word), autoPlay: !isUsageAvailable).shake(),
        const Gap(12),
        Expanded(
          child: Text(
            LocalizedMap(
              value: {
                languages.en: 'Word Score',
                languages.ru: 'Очки слова',
                languages.it: 'Punteggio Parola',
              },
            ).getValue(locale),
            style: context.textThemeBold.labelLarge?.copyWith(color: fadeColor),
          ),
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
  Widget build(final BuildContext context) => AnimatedOpacity(
    duration: 250.milliseconds,
    opacity: onPressed == null ? 0.2 : 1,
    child: UiBaseButton(
      onPressed: onPressed,
      builder: (final context, final focused, final onlyFocused) =>
          Card.outlined(
            elevation: onPressed == null ? null : 1,
            shape: BeveledRectangleBorder(
              side: BorderSide(color: context.colorScheme.primary),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.center,
              child: child,
            ),
          ),
    ),
  );
}
