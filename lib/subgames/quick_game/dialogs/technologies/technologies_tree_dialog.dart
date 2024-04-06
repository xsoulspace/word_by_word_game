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

    return DialogScaffold(
      children: [
        Row(
          children: [
            Text(
              // TODO(arenukvern): l10n
              'Technology Tree',
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
                if (isHintVisible)
                  // TODO(arenukvern): l10n
                  ...[
                  const Text(
                    'Tip: to change researching technology enter new word and '
                    'choose select technology action',
                    textAlign: TextAlign.center,
                  ),
                  const Gap(12),
                ],

                // TODO(arenukvern): l10n
                const Text(
                  'Tip: use words to research technology faster.',
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
            // TODO(arenukvern): l10n
            technologiesCubit.researchingTechnology?.title.getValue() ??
                'Not researching',
          ),
          // TODO(arenukvern): l10n
          subtitle: const Text('Current Research'),
        ),
        const Gap(32),
        ...technologiesCubit.technologies.values.map(
          (final e) => _TechnologyTile(
            key: ValueKey(e.id),
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
    super.key,
  });
  final TechnologyModel value;
  final bool isSelectionAllowed;
  final TechnologyProgressModel? progress;
  // ignore: avoid_positional_boolean_parameters
  final void Function(TechnologyModelId id, bool isSelected) onSelectedChanged;
  final TechnologyModelId? selectedId;
  @override
  Widget build(final BuildContext context) {
    final unlockCondition = progress?.unlockCondition;
    final wordsProgress =
        unlockCondition?.languageWords[LocalizedMap.getCurrentLanugage()];
    final isSelected = selectedId == value.id;
    final isUnlocked =
        unlockCondition?.getIsUnlockedForCurrentLanguage() == true;
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

            // TODO(arenukvern): l10n
            Text(
              isUnlocked ? 'Researched' : 'Not researched',
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
