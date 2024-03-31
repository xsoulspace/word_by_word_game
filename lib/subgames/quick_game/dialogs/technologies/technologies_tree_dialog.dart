import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';

class TechnologiesTreeDialog extends StatelessWidget {
  const TechnologiesTreeDialog({super.key});

  @override
  Widget build(final BuildContext context) {
    final technologiesCubit = context.watch<TechnologiesCubit>();
    final dialogController = context.read<DialogController>();
    return DialogScaffold(
      children: [
        Row(
          children: [
            Text(
              'Technology Tree',
              style: context.textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            CloseButton(onPressed: dialogController.closeDialogAndResume),
          ],
        ),
        const Card.filled(
          child: Column(
            children: [
              Gap(3),
              Text(
                'To change currently researched technology enter new word and '
                'choose select technology action',
              ),
              Text('Use words from any technology to reasearch it faster.'),
              Gap(3),
            ],
          ),
        ),
        ListTile(
          title: Text(
            technologiesCubit.researchingTechnology?.title.getValue() ??
                'Not researching',
          ),
          subtitle: const Text('Current Research'),
        ),
        const Gap(8),
        ...technologiesCubit.technologies.values.map(
          (final e) => _TechnologyTile(
            key: ValueKey(e.id),
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
    super.key,
  });
  final TechnologyModel value;
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            /// switching manually is only for debug
            /// because it kills the idea of wording
            if (kDebugMode)
              Switch.adaptive(
                value: isSelected,
                onChanged: (final isSelected) =>
                    onSelectedChanged(value.id, isSelected),
              ),
            Text(value.title.getValue()),
            const Spacer(),
            // TODO(arenukvern): l10n
            Text(
              unlockCondition?.getIsUnlockedForLanguage() == true
                  ? 'Researched'
                  : 'Not researched',
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
                    selected: wordsProgress?[index].isUsed == true,
                  ),
                )
                .toList(),
          ),
        ),
        const Divider(),
      ],
    );
  }
}
