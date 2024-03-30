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
    final technologiesState = technologiesCubit.state;
    final settings = context.watch<AppSettingsCubit>();
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
            CloseButton(onPressed: dialogController.closeDialog),
          ],
        ),
        const Gap(3),
        const Text(
          'To change currently researched technology enter new word and '
          'choose select technology action',
        ),
        const Text('Use words from any technology to reasearch it faster.'),
        const Gap(4),
        ListTile(
          title: Text(
            technologiesState.researchingTechnology?.title.getValue() ??
                'Not researching',
          ),
          subtitle: const Text('Current Research'),
        ),
        const Gap(8),
        ...technologiesState.technologies.values.map(
          (final e) => _TechnologyTile(
            key: ValueKey(e.id),
            selectedId: technologiesState.researchingTechnology?.id,
            onSelectedChanged: technologiesCubit.onResearchingTechnologyChanged,
            value: e,
          ),
        ),
      ],
    );
  }
}

class _TechnologyTile extends StatelessWidget {
  const _TechnologyTile({
    required this.value,
    required this.onSelectedChanged,
    required this.selectedId,
    super.key,
  });
  final TechnologyModel value;
  // ignore: avoid_positional_boolean_parameters
  final void Function(TechnologyModelId id, bool isSelected) onSelectedChanged;
  final TechnologyModelId? selectedId;
  @override
  Widget build(final BuildContext context) {
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
              value.unlockCondition.getIsUnlockedForLanguage()
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
                .map(
                  (final word) => InputChip(
                    label: Text(word.word),
                    selected: word.isUsed,
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
