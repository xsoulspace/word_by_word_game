import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/level_actions_frame/actions_simple_frame.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/level_actions_frame/level_actions_row.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/word_composition_bar/word_composition_bar.dart';

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
                        color: context.colorScheme.tertiary,
                      ),
                    ),
                    const UiEnergyCards(),
                  ],
                ),
                const _TechnologyTabView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TechnologyTabView extends StatelessWidget {
  const _TechnologyTabView({super.key});

  @override
  Widget build(final BuildContext context) {
    final technologiesCubit = context.watch<TechnologiesCubit>();
    final technology = technologiesCubit.researchingTechnology;
    return AnimatedSwitcher(
      duration: 50.milliseconds,
      child: technology == null
          ? const _SelectTechnologyCard()
          : const _ResearchMultiplierCards(),
    );
  }
}

class _SelectTechnologyCard extends StatelessWidget {
  const _SelectTechnologyCard({super.key});
  static const multiplier = EnergyMultiplierType.m2;
  @override
  Widget build(final BuildContext context) {
    final (:applyingScore, :compositionState) = useApplyingScoreComposable(
      context: context,
      type: multiplier,
    );
    final (:onChangeTechnology) = _useResearchTechnologyComposable(
      compositionCubit: compositionState,
      context: context,
      multiplier: multiplier,
    );

    return UiActionButton(
      onCompleted: onChangeTechnology,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '${applyingScore.formattedScore}',
            style: context.textTheme.headlineLarge,
          ),
          const Gap(12),
          Text(
            // TODO(arenukvern): l10n
            'Research Technology',
            style: context.textTheme.titleMedium,
          ),
        ],
      ),
    ).animate().fadeIn();
  }
}

class _ChangeResearchingTechnology extends StatelessWidget {
  const _ChangeResearchingTechnology({super.key});

  @override
  Widget build(final BuildContext context) {
    final (:applyingScore, :compositionState) = useApplyingScoreComposable(
      context: context,
      type: _SelectTechnologyCard.multiplier,
    );
    final (:onChangeTechnology) = _useResearchTechnologyComposable(
      compositionCubit: compositionState,
      context: context,
      multiplier: _SelectTechnologyCard.multiplier,
    );

    return UiActionButton(
      tooltipMessage:
          // TODO(arenukvern): l10n
          'Change technology for faster research',
      onCompleted: onChangeTechnology,
      child: Row(
        children: [
          const Text('Change'),
          const Gap(8),
          Text(
            '${applyingScore.formattedScore}',
            style: context.textThemeBold.labelMedium,
          ),
        ],
      ),
    );
  }
}

({VoidCallback onChangeTechnology}) _useResearchTechnologyComposable({
  required final BuildContext context,
  required final WordCompositionCubit compositionCubit,
  required final EnergyMultiplierType multiplier,
}) {
  final dialogController = context.read<DialogController>();

  void onChangeTechnology() => dialogController.showTechnologiesTree(
        TechnologiesTreeDialogDto.selectable.copyWith(
          onCloseIfChanged: () {
            compositionCubit.onSelectEnergyMultiplier(multiplier);
            // TutorialFrame.sendOnClickEvent(
            //   uiKey: TutorialUiItem.selectRefuelOption,
            //   context: context,
            // );
          },
        ),
      );
  return (onChangeTechnology: onChangeTechnology);
}

class _ResearchMultiplierCards extends StatelessWidget {
  const _ResearchMultiplierCards({super.key});

  @override
  Widget build(final BuildContext context) {
    final technologiesCubit = context.watch<TechnologiesCubit>();
    final technology = technologiesCubit.researchingTechnology;
    final technologyProgress = technologiesCubit.researchingTechnologyProgress;
    final isUnlocked =
        technologyProgress?.unlockCondition.getIsUnlockedForCurrentLanguage() ==
            true;
    return Row(
      children: [
        Flexible(
          child: Column(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    // TODO(arenukvern): add popup with tips about words
                    assert(false, 'TODO: add popup with tips about words');
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          isUnlocked ? 'Researched' : 'Researching',
                          style: context.textTheme.labelMedium?.copyWith(
                            color: context.colorScheme.tertiary,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            '${technology?.title.getValue()}',
                            style: context.textThemeBold.titleLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const _ChangeResearchingTechnology(),
            ],
          ),
        ).animate().fadeIn(),
        Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _TechnologyMultiplierCard(type: EnergyMultiplierType.m1),
                    Gap(4),
                    _TechnologyMultiplierCard(type: EnergyMultiplierType.m2),
                    Gap(4),
                    _TechnologyMultiplierCard(type: EnergyMultiplierType.m3),
                  ],
                ),
              ),
              const Gap(12),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 150),
                child: Row(
                  children: [
                    Flexible(
                      child: Text(
                        'Use points to research faster',
                        textAlign: TextAlign.center,
                        style: context.textTheme.labelMedium?.copyWith(
                          color: context.colorScheme.tertiary,
                        ),
                      ).animate().fadeIn(),
                    ),
                  ],
                ),
              ),
              const Gap(8),
            ],
          ),
        ),
      ],
    );
  }
}

class _TechnologyMultiplierCard extends StatelessWidget {
  const _TechnologyMultiplierCard({
    required this.type,
    super.key,
  });
  final EnergyMultiplierType type;
  @override
  Widget build(final BuildContext context) {
    final composable = useApplyingScoreComposable(type: type, context: context);

    return UiActionButton(
      constraints: const BoxConstraints(minWidth: 30),
      onCompleted: () =>
          composable.compositionState.onSelectEnergyMultiplier(type),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${composable.applyingScore.formattedScore}',
            textAlign: TextAlign.center,
            style: context.textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
