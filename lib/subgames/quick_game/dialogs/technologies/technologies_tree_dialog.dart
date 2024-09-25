// ignore_for_file: lines_longer_than_80_chars

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:wbw_dictionaries/wbw_dictionaries.dart';
import 'package:word_by_word_game/common_imports.dart';

typedef TechnologyWordInfoTuple = ({
  TechnologyModel technology,

  /// translation of gameplay word
  ///
  /// Controlled by [AppSettingsNotifier.language]
  UsefulWordModel? uiWord,

  /// original word
  ///
  /// Controlled by [wordsLanguage]
  UsefulWordModel? languageWord
});

class _TechnologyTile extends StatelessWidget {
  const _TechnologyTile({
    required this.value,
    required this.progress,
    required this.onHover,
    required this.language,
    super.key,
  });
  final ValueChanged<TechnologyWordInfoTuple> onHover;
  final TechnologyModel value;
  final TechnologyProgressModel? progress;
  final Languages language;
  @override
  Widget build(final BuildContext context) {
    final mechanics = context.read<MechanicsCollection>();
    final unlockCondition = progress?.unlockCondition;
    final wordsProgress = unlockCondition?.languageWords[language];
    final allWords = value.unlockCondition.languageWords[language]!;
    final locale = useLocale(context);
    context.watch<TechnologiesCubit>();

    /// used to provide fast translation and meaning
    final allUiWords = value.unlockCondition.languageWords[locale.language]!;
    final isUnlocked = unlockCondition != null &&
        mechanics.technology.checkIsUnlockedInSomeLanguages(
          unlockCondition: unlockCondition,
        );
    final textColor = context.colorScheme.onPrimaryContainer.withOpacity(0.4);
    void onTechnologyPressed() =>
        onHover((technology: value, uiWord: null, languageWord: null));
    return FocusableActionDetector(
      onShowHoverHighlight: (final isHovered) {
        if (!isHovered) return;
        onTechnologyPressed();
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (isUnlocked) const Icon(Icons.done),
                  Text(
                    value.title.getValue(locale),
                    style: context.textTheme.titleMedium?.copyWith(
                      color: textColor,
                    ),
                  ),
                  const Gap(8),
                  UiBaseButton(
                    onPressed: onTechnologyPressed,
                    child: Icon(Icons.info_outline, color: textColor),
                  ),
                  if (kDebugMode)
                    IconButton(
                      onPressed: () => context
                          .read<TechnologiesCubit>()
                          .onResearchSpecificTechnology(
                            event: const ResearchTechnologyEvent(
                              score: ScoreModel(value: 5000),
                            ),
                            technologyId: value.id,
                          ),
                      icon: const Icon(Icons.lock_open_rounded),
                    ),
                ],
              ),
              Text(
                (isUnlocked
                        ? const LocalizedMap(
                            value: {
                              Languages.en: 'Researched',
                              Languages.ru: 'Исследовано',
                              Languages.it: 'Ricerco',
                            },
                          )
                        : const LocalizedMap(
                            value: {
                              Languages.en: 'Not researched',
                              Languages.ru: 'Не исследовано',
                              Languages.it: 'Non ricerco',
                            },
                          ))
                    .getValue(locale),
                style: context.textTheme.labelMedium?.copyWith(
                  color: (isUnlocked
                          ? context.colorScheme.surfaceTint
                          : context.colorScheme.secondary)
                      .withOpacity(0.5),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 48,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: allWords.mapIndexed(
                (final index, final word) {
                  void onWordPressed() => onHover(
                        (
                          technology: value,
                          uiWord: allUiWords[index],
                          languageWord: word,
                        ),
                      );
                  return FocusableActionDetector(
                    onShowHoverHighlight: (final isHovered) {
                      if (!isHovered) return;
                      onWordPressed();
                    },
                    key: ValueKey(word),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: InputChip(
                        onPressed: onWordPressed,
                        padding: EdgeInsets.zero,
                        label: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(word.word),
                            const Gap(8),
                            const Icon(Icons.info_outline, size: 14),
                          ],
                        ),
                        selected: wordsProgress?[index].isUsed == true,
                      ),
                    ),
                  );
                },
              ).toList(),
            ),
          ),
          Divider(color: context.colorScheme.surfaceTint.withOpacity(0.1)),
        ],
      ),
    );
  }
}

class _TechnologyPanelView extends StatefulWidget {
  const _TechnologyPanelView({
    required this.technologyWord,
  });
  final TechnologyWordInfoTuple? technologyWord;

  @override
  State<_TechnologyPanelView> createState() => _TechnologyPanelViewState();
}

class _TechnologyPanelViewState extends State<_TechnologyPanelView> {
  String _wordMeaning = '';
  UsefulWordModel? _uiWord;
  UsefulWordModel? _languageWord;

  late final _wbwDictionary = context.read<WbwDictionary>();
  late final _appSettingsNotifier = context.read<AppSettingsNotifier>();
  Future<void> _updateWordMeaning(final TechnologyWordInfoTuple word) async {
    final uiWord = word.uiWord;
    final languageWord = word.languageWord;
    if (languageWord == null) return;
    final language = _appSettingsNotifier.language;
    _languageWord = languageWord;
    _uiWord = uiWord;
    void setEmptyMeaning() {
      // TODO(arenukvern): l10n
      _wordMeaning = 'No meaning found (>_<)';
    }

    if (uiWord != null) {
      _wordMeaning = await _wbwDictionary.getWordMeaning(
        (
          language: language,
          word: uiWord.word,
        ),
      );
      if (_wordMeaning == '') setEmptyMeaning();
    } else {
      setEmptyMeaning();
    }
    if (mounted) setState(() {});
    // print({language, _languageWord, _uiWord, _wordMeaning});
    // if (kDebugMode) {
    //   print('$language word: $word | word meaning: $_wordMeaning');
    // }
  }

  @override
  void didUpdateWidget(covariant final _TechnologyPanelView oldWidget) {
    super.didUpdateWidget(oldWidget);
    final technologyWord = widget.technologyWord;
    final newWord = technologyWord?.languageWord;
    if (newWord != oldWidget.technologyWord?.languageWord) {
      if (technologyWord != null) unawaited(_updateWordMeaning(technologyWord));
    }
  }

  @override
  Widget build(final BuildContext context) {
    final technology = widget.technologyWord?.technology;
    final locale = useLocale(context);
    return Card.filled(
      elevation: 12,
      margin: EdgeInsets.zero,
      child: AnimatedSize(
        duration: 100.milliseconds,
        curve: Curves.easeInOut,
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: technology == null
                ? []
                : [
                    Row(
                      children: [
                        Text(
                          // TODO(arenukvern): l10n
                          'Technology',
                          style: context.textTheme.labelMedium,
                        ),
                        Expanded(
                          child: Text(
                            technology.title.getValue(locale),
                            style: context.textThemeBold.titleLarge,
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ],
                    ),

                    // TODO(arenukvern): add technology description
                    const Divider(),
                    const Gap(4),
                    Row(
                      children: [
                        Text(
                          // TODO(arenukvern): l10n
                          'Word',
                          style: context.textTheme.labelMedium,
                        ),
                        Expanded(
                          child: Text(
                            // TODO(arenukvern): l10n
                            'Original: ${_languageWord?.word},  '
                            'Translation: ${_uiWord?.word}',
                            style: context.textThemeBold.labelLarge,
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ],
                    ),
                    if (_wordMeaning.isNotEmpty) ...[
                      const Gap(12),
                      Text(
                        _wordMeaning,
                        textAlign: TextAlign.end,
                        style: context.textTheme.labelMedium?.copyWith(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ],
          ),
        ),
      ),
    );
  }
}
