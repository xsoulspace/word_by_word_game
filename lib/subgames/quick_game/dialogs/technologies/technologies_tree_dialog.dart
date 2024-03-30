import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/widgets/widgets.dart';

class TechnologiesTreeDialog extends StatelessWidget {
  const TechnologiesTreeDialog({super.key});

  @override
  Widget build(final BuildContext context) {
    final technologiesCubit = context.watch<TechnologiesCubit>();
    final technologiesState = technologiesCubit.state;
    final settings = context.watch<AppSettingsCubit>();
    return DialogScaffold(
      children: [
        Text(
          'Technologies Tree',
          style: context.textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),
        const Gap(4),
        ListTile(
          title: const Text('Current Research'),
          subtitle: Text(
            technologiesState.researchingTechnology?.title.getValue() ??
                'Not researching',
          ),
        ),
        const Gap(8),
        ...technologiesState.technologies.values.map(
          (final e) => SwitchListTile.adaptive(
            value: e.id == technologiesState.researchingTechnology?.id,
            onChanged: (final isSelected) {
              // TODO(arenukvern): description
            },
            title: Text(e.title.getValue()),
            subtitle: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 250),
              child: SizedBox(
                height: 48,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: e.unlockCondition
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
            ),
          ),
        ),
      ],
    );
  }
}
