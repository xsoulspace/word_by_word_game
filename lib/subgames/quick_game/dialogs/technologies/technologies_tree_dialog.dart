// ignore_for_file: lines_longer_than_80_chars

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_dictionaries/wbw_dictionaries.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/level_start/start_options/level_options.dart';

part 'technologies_tree_dialog.freezed.dart';

@freezed
class TechnologiesTreeDialogDto with _$TechnologiesTreeDialogDto {
  const factory TechnologiesTreeDialogDto({
    @Default(false) final bool isSelectionAllowed,
    @Default(false) final bool isHintVisible,
    final VoidCallback? onCloseIfChanged,
  }) = _TechnologiesTreeDialogDto;
  static const nonSelectable = TechnologiesTreeDialogDto(isHintVisible: true);
  static const selectable = TechnologiesTreeDialogDto(isSelectionAllowed: true);
}

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

class TechnologiesTreeDialog extends HookWidget {
  const TechnologiesTreeDialog({
    required this.dto,
    required this.onClose,
    super.key,
  });
  final VoidCallback onClose;
  final TechnologiesTreeDialogDto dto;

  @override
  Widget build(final BuildContext context) {
    final technologiesCubit = context.watch<TechnologiesCubit>();
    final technologyForInfoNotifier = useState<TechnologyWordInfoTuple?>(null);

    final locale = useLocale(context);
    final levelCubit = context.read<LevelBloc>();
    final wordsLanguage =
        context.select<LevelBloc, Languages>((final c) => c.wordsLanguage);

    /// to save initial state, and compare with final state
    final initialTechnologyState =
        useState<TechnologyModel?>(technologiesCubit.researchingTechnology);
    final currentTechnology = technologiesCubit.researchingTechnology;

    /// switching manually should be available only in debug mode,
    /// because it kills the idea of wording
    final bool isSelectionAllowed = dto.isSelectionAllowed;
    final bool isHintVisible = dto.isHintVisible;
    void onClose() {
      this.onClose();
      if (initialTechnologyState.value != currentTechnology) {
        dto.onCloseIfChanged?.call();
      }
    }

    return DialogScaffold(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      bottom: _TechnologyPanelView(
        technologyWord: technologyForInfoNotifier.value,
      ),
      top: Padding(
        padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
        child: Row(
          children: [
            Text(
              const LocalizedMap(
                value: {
                  Languages.en: 'Technology Tree',
                  Languages.ru: 'Дерево технологий',
                  Languages.it: 'Albero tecnologie',
                },
              ).getValue(locale),
              style: context.textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            if (isSelectionAllowed && currentTechnology != null)
              IconButton.filled(
                onPressed: onClose,
                icon: const Icon(Icons.done_rounded),
              )
            else if (isSelectionAllowed && currentTechnology == null)
              IconButton.outlined(
                onPressed: onClose,
                icon: const Icon(Icons.done_rounded),
              )
            else
              IconButton.outlined(
                onPressed: onClose,
                icon: const Icon(Icons.close),
              ),
          ],
        ),
      ),
      children: [
        const Gap(16),
        Card.outlined(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Column(
              children: [
                const Gap(6),
                if (isHintVisible) ...[
                  Text(
                    const LocalizedMap(
                      value: {
                        Languages.en:
                            'Tip: to change researching technology enter new word and choose select technology action',
                        Languages.ru:
                            'Подсказка: для изменения текущей технологии введите новое слово и выберите действие "Выбрать технологию"',
                        Languages.it:
                            'Suggerimento: per modificare la tecnologia corrente, inserisci una nuova parola e scegli l\'azione "Seleziona tecnologia"',
                      },
                    ).getValue(locale),
                    textAlign: TextAlign.center,
                  ),
                  const Gap(12),
                ],
                Text(
                  const LocalizedMap(
                    value: {
                      Languages.en:
                          'Tip: use words to research technology faster.',
                      Languages.ru:
                          'Подсказка: использовать слова для быстрого исследования технологий.',
                      Languages.it:
                          'Suggerimento: usare parole per un ricerche veloce della tecnologia.',
                    },
                  ).getValue(locale),
                  textAlign: TextAlign.center,
                ),
                const Gap(6),
              ],
            ),
          ),
        ),
        const Gap(12),
        ListTile(
          title: const Text(
            // TODO(arenukvern): l10n
            'Words Language',
          ),
          trailing: WordsLanguageSwitcher(
            onChanged: levelCubit.onChangeWordsLanguage,
            value: wordsLanguage,
          ),
        ),
        const Gap(6),
        ListTile(
          title: Text(
            technologiesCubit.researchingTechnology?.title.getValue(locale) ??
                const LocalizedMap(
                  value: {
                    Languages.en: 'Not researching',
                    Languages.ru: 'Не исследуется',
                    Languages.it: 'Non ricerco',
                  },
                ).getValue(locale),
          ),
          subtitle: Text(
            const LocalizedMap(
              value: {
                Languages.en: 'Current Research',
                Languages.ru: 'Текущее исследование',
                Languages.it: 'Ricerche correnti',
              },
            ).getValue(locale),
          ),
        ),
        const Gap(32),
        ...technologiesCubit.technologies.values
            .where((final e) => TechnologyType.checkIsActive(e.type))
            .map(
              (final e) => _TechnologyTile(
                key: ValueKey(e.id),
                onHover: (final technologyWord) {
                  technologyForInfoNotifier.value = technologyWord;
                },
                language: wordsLanguage,
                isSelectionAllowed: isSelectionAllowed,
                selectedId: technologiesCubit.researchingTechnology?.id,
                onSelectedChanged:
                    technologiesCubit.onResearchingTechnologyChanged,
                value: e,
                progress: technologiesCubit.progress.technologies[e.id],
              ),
            ),
      ],
    );
  }
}

class _TechnologyTile extends StatelessWidget {
  const _TechnologyTile({
    required this.value,
    required this.progress,
    required this.onSelectedChanged,
    required this.selectedId,
    required this.onHover,
    required this.isSelectionAllowed,
    required this.language,
    super.key,
  });
  final ValueChanged<TechnologyWordInfoTuple> onHover;
  final TechnologyModel value;
  final bool isSelectionAllowed;
  final TechnologyProgressModel? progress;
  // ignore: avoid_positional_boolean_parameters
  final void Function(TechnologyModelId id, bool isSelected) onSelectedChanged;
  final TechnologyModelId? selectedId;
  final Languages language;
  @override
  Widget build(final BuildContext context) {
    final mechanics = context.read<MechanicsCollection>();
    final unlockCondition = progress?.unlockCondition;
    final wordsProgress = unlockCondition?.languageWords[language];
    final allWords = value.unlockCondition.languageWords[language]!;
    final locale = useLocale(context);

    /// used to provide fast translation and meaning
    final allUiWords = value.unlockCondition.languageWords[locale.language]!;
    final isSelected = selectedId == value.id;
    final isUnlocked = unlockCondition != null &&
        mechanics.technology.checkIsUnlockedInSomeLanguages(
          unlockCondition: unlockCondition,
        );
    final textColor = isSelected
        ? context.colorScheme.onPrimaryContainer
        : context.colorScheme.onPrimaryContainer.withOpacity(0.4);
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
                  if (isUnlocked)
                    const Icon(Icons.done)
                  else if (isSelectionAllowed)
                    Switch.adaptive(
                      value: isSelected,
                      onChanged: (final isSelected) =>
                          onSelectedChanged(value.id, isSelected),
                    )
                  else if (isSelected)
                    const Icon(Icons.arrow_right),
                  UiBaseButton(
                    onPressed: isSelectionAllowed && !isUnlocked
                        ? () => onSelectedChanged(value.id, !isSelected)
                        : () {},
                    child: Text(
                      value.title.getValue(locale),
                      style: context.textTheme.titleMedium?.copyWith(
                        color: textColor,
                      ),
                    ),
                  ),
                  const Gap(8),
                  UiBaseButton(
                    onPressed: onTechnologyPressed,
                    child: Icon(Icons.info_outline, color: textColor),
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
