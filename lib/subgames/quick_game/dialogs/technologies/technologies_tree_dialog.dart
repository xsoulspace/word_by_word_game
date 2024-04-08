// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';

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
    final initialTechnologyState =
        useState<TechnologyModel?>(technologiesCubit.researchingTechnology);
    final currentTechnology = technologiesCubit.researchingTechnology;
    void onClose() {
      this.onClose();
      if (initialTechnologyState.value != currentTechnology) {
        dto.onCloseIfChanged?.call();
      }
    }

    /// switching manually should be available only in debug mode,
    /// because it kills the idea of wording
    final bool isSelectionAllowed = dto.isSelectionAllowed;
    final bool isHintVisible = dto.isHintVisible;
    final language = LocalizedMap.getCurrentLanugage();
    return DialogScaffold(
      children: [
        Row(
          children: [
            Text(
              const LocalizedMap(
                value: {
                  Languages.en: 'Technology Tree',
                  Languages.ru: 'Дерево технологий',
                  Languages.it: 'Albero tecnologie',
                },
              ).getValue(),
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
                    ).getValue(),
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
                  ).getValue(),
                  textAlign: TextAlign.center,
                ),
                const Gap(6),
              ],
            ),
          ),
        ),
        const Gap(18),
        ListTile(
          title: Text(
            technologiesCubit.researchingTechnology?.title.getValue() ??
                const LocalizedMap(
                  value: {
                    Languages.en: 'Not researching',
                    Languages.ru: 'Не исследуется',
                    Languages.it: 'Non ricerco',
                  },
                ).getValue(),
          ),
          subtitle: Text(
            const LocalizedMap(
              value: {
                Languages.en: 'Current Research',
                Languages.ru: 'Текущее исследование',
                Languages.it: 'Ricerche correnti',
              },
            ).getValue(),
          ),
        ),
        const Gap(32),
        ...technologiesCubit.technologies.values.map(
          (final e) => _TechnologyTile(
            key: ValueKey(e.id),
            language: language,
            isSelectionAllowed: isSelectionAllowed,
            selectedId: technologiesCubit.researchingTechnology?.id,
            onSelectedChanged: technologiesCubit.onResearchingTechnologyChanged,
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
    required this.isSelectionAllowed,
    required this.language,
    super.key,
  });
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
    final isSelected = selectedId == value.id;
    final isUnlocked = unlockCondition != null &&
        mechanics.technology.checkIsUnlockedInSomeLanguages(
          unlockCondition: unlockCondition,
        );
    return Column(
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
                if (isSelectionAllowed)
                  Switch.adaptive(
                    value: isSelected,
                    onChanged: (final isSelected) =>
                        onSelectedChanged(value.id, isSelected),
                  ),
                UiBaseButton(
                  onPressed: isSelectionAllowed
                      ? () => onSelectedChanged(value.id, !isSelected)
                      : () {},
                  child: Text(
                    value.title.getValue(),
                    style: context.textTheme.titleMedium?.copyWith(
                      color: isSelected
                          ? context.colorScheme.onPrimaryContainer
                          : context.colorScheme.onPrimaryContainer
                              .withOpacity(0.4),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              isUnlocked
                  ? const LocalizedMap(
                      value: {
                        Languages.en: 'Researched',
                        Languages.ru: 'Исследовано',
                        Languages.it: 'Ricerco',
                      },
                    ).getValue()
                  : const LocalizedMap(
                      value: {
                        Languages.en: 'Not researched',
                        Languages.ru: 'Не исследовано',
                        Languages.it: 'Non ricerco',
                      },
                    ).getValue(),
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
            children: value.unlockCondition
                .languageWords[LocalizedMap.getCurrentLanugage()]!
                .mapIndexed(
                  (final index, final word) => InputChip(
                    label: Text(word.word),
                    key: ValueKey(word),
                    selected: wordsProgress?[index].isUsed == true,
                  ),
                )
                .toList(),
          ),
        ),
        Divider(color: context.colorScheme.surfaceTint.withOpacity(0.1)),
      ],
    );
  }
}
