import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/level_actions_frame/actions_simple_frame.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/level_actions_frame/level_actions_row.dart';

class UIActionFrameAdvanced extends StatelessWidget {
  const UIActionFrameAdvanced({super.key});

  @override
  Widget build(final BuildContext context) {
    final uiTheme = context.uiTheme;
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          TabBar(
            padding: EdgeInsets.zero,
            labelPadding: EdgeInsets.zero,
            tabs: [
              (
                title: 'Energy',
                iconChildren: [
                  Image.asset(
                    UiAssetHelper.useImagePath(UiIcons.fire.path),
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
              (
                title: 'Technology',
                iconChildren: [
                  const Icon(CupertinoIcons.lab_flask, size: 18),
                  const Gap(2),
                ]
              ),
            ]
                .map(
                  (final e) => Tab(
                    height: 36,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ...e.iconChildren,
                        Text(e.title),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 140),
            child: TabBarView(
              children: [
                Column(
                  children: [
                    uiTheme.verticalBoxes.medium,
                    Text(
                      S.of(context).applyFuelOption,
                      style: textTheme.titleSmall?.copyWith(
                        color: colorScheme.onBackground.withOpacity(0.6),
                      ),
                    ),
                    const UiEnergyCards(),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _SelectTechnologyCard(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SelectTechnologyCard extends StatelessWidget {
  const _SelectTechnologyCard({super.key});

  @override
  Widget build(final BuildContext context) {
    final technologiesCubit = context.watch<TechnologiesCubit>();
    final technology = technologiesCubit.researchingTechnology;
    final technologyProgress = technologiesCubit.researchingTechnologyProgress;
    final dialogController = context.read<DialogController>();
    return UiActionButton(
      onCompleted: () async => dialogController.showTechnologiesTree(
        selectable: true,
      ),
      child: Text(
        technology == null
            // TODO(arenukvern): l10n
            ? 'Research Technology'
            : 'Researching \n${technology.title.getValue()}',
      ),
    );
  }
}
