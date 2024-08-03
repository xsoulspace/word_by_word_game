import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/level_actions_frame/actions_simple_frame.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/level_actions_frame/focused_object_actions_view.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/level_actions_frame/heat_engine_view.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/level_actions_frame/level_actions_row.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/word_composition_bar/word_composition_bar.dart';

class UIActionFrameAdvanced extends StatelessWidget {
  const UIActionFrameAdvanced({super.key});

  @override
  Widget build(final BuildContext context) {
    final uiTheme = context.uiTheme;
    final locale = useLocale(context);
    final textTheme = context.textTheme;
    final playersBloc = context.watch<LevelPlayersBloc>();
    final isPlayerFocused = playersBloc.isPlayerFocused;
    final isTentFocused =
        playersBloc.focusedObject.tileId.value.contains('tent');
    final hotAirBalloonActions = [
      (
        title: const LocalizedMap(
          value: {
            Languages.en: 'Flying Energy',
            Languages.ru: 'Энергия полета',
            Languages.it: 'Energia di volo',
          },
        ),
        iconChildren: [
          Image.asset(
            UiAssetHelper.useImagePath(UiIcons.fire.path),
            width: 24,
            height: 24,
          ),
        ],
        tabView: const Center(child: UiEnergyCards()),
        // Text(
        //   ,
        //   style: textTheme.titleSmall?.copyWith(
        //     color: context.colorScheme.tertiary.withOpacity(0.9),
        //   ),
        // ),
      ),
      (
        title: const LocalizedMap(
          value: {
            Languages.en: 'Actions',
            Languages.ru: 'Действия',
            Languages.it: 'Azioni',
          },
        ),
        iconChildren: [
          const Icon(CupertinoIcons.book, size: 18),
          const Gap(2),
        ],
        tabView: const _ActionsTabView(),
      ),
    ];
    final tentActions = [
      (
        title: const LocalizedMap(
          value: {
            Languages.en: 'Actions',
            Languages.ru: 'Действия',
            Languages.it: 'Azioni',
          },
        ),
        iconChildren: [
          const Icon(CupertinoIcons.book, size: 18),
          const Gap(2),
        ],
        tabView: const TentActionsView(),
      ),
    ];

    final views = [
      if (isPlayerFocused) ...hotAirBalloonActions.map((final e) => e.tabView),
      if (isTentFocused) ...tentActions.map((final e) => e.tabView),
      const _TechnologyTabView(),
    ];
    final tabs = [
      if (isPlayerFocused) ...hotAirBalloonActions,
      if (isTentFocused) ...tentActions,
      (
        title: const LocalizedMap(
          value: {
            Languages.en: 'Technologies',
            Languages.ru: 'Технологии',
            Languages.it: 'Tecnologie',
          },
        ),
        iconChildren: [
          const Icon(CupertinoIcons.lab_flask, size: 18),
          const Gap(2),
        ],
        tabView: const SizedBox(),
      ),
    ];

    return DefaultTabController(
      length: tabs.length,
      child: Builder(
        builder: (final context) => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 120),
              child: TabBarView(children: views),
            ),
            TabBar(
              tabAlignment: TabAlignment.center,
              padding: EdgeInsets.zero,
              isScrollable: true,
              tabs: tabs
                  .mapIndexed(
                    (final index, final e) => Tab(
                      height: 36,
                      child: FocusableActionDetector(
                        onShowHoverHighlight: (final isHovered) {
                          if (isHovered) {
                            DefaultTabController.of(context).animateTo(index);
                          }
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ...e.iconChildren,
                                Text(e.title.getValue(locale)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class _TechnologyTabView extends StatelessWidget {
  const _TechnologyTabView();

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
  const _SelectTechnologyCard();
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
    final locale = useLocale(context);

    return UiActionButton(
      onCompleted: onChangeTechnology,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '${applyingScore.value.formattedScore}',
            style: context.textTheme.headlineLarge,
          ),
          const Gap(12),
          Text(
            const LocalizedMap(
              value: {
                Languages.en: 'Research Technology',
                Languages.ru: 'Исследовать технологию',
                Languages.it: 'Ricercare tecnologia',
              },
            ).getValue(locale),
            style: context.textTheme.titleMedium,
          ),
        ],
      ),
    ).animate().fadeIn();
  }
}

class _ChangeResearchingTechnology extends StatelessWidget {
  const _ChangeResearchingTechnology();

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
    final locale = useLocale(context);

    return UiActionButton(
      tooltipMessage: const LocalizedMap(
        value: {
          Languages.en: 'Change technology for faster research',
          Languages.ru: 'Изменить технологию для быстрого исследования',
          Languages.it: 'Cambia la tecnologia per un ricerche veloce',
        },
      ).getValue(locale),
      onCompleted: onChangeTechnology,
      child: Row(
        children: [
          Text(
            const LocalizedMap(
              value: {
                Languages.en: 'Change',
                Languages.ru: 'Изменить',
                Languages.it: 'Cambia',
              },
            ).getValue(locale),
          ),
          const Gap(8),
          Text(
            '${applyingScore.value.formattedScore}',
            style: context.textThemeBold.labelMedium,
          ),
        ],
      ),
    );
  }
}

({VoidCallback onChangeTechnology}) _useResearchTechnologyComposable({
  required final BuildContext context,
  required final GuiWordCompositionCubit compositionCubit,
  required final EnergyMultiplierType multiplier,
}) {
  final dialogController = context.read<DialogController>();

  void onChangeTechnology() => dialogController.showTechnologiesTree(
        TechnologiesTreeDialogDto.selectable.copyWith(
          onCloseIfChanged: () {
            compositionCubit.onPowerSelected(multiplier);
            // TutorialFrame.sendOnClickEvent(
            //   uiKey: TutorialUiItem.selectRefuelOption,
            //   context: context,
            // );
          },
        ),
      );
  return (onChangeTechnology: onChangeTechnology);
}

TechUnlockStatusTuple _useTechIsUnlocked(
  final BuildContext context,
) {
  final mechanics = context.read<MechanicsCollection>();
  final technologiesCubit = context.watch<TechnologiesCubit>();
  final wordsLanguage =
      context.select<LevelBloc, Languages>((final c) => c.wordsLanguage);
  final technologyProgress = technologiesCubit.researchingTechnologyProgress;
  final unlockCondition = technologyProgress?.unlockCondition;

  return mechanics.technology.checkIsUnlockedForLanguage(
    unlockCondition: unlockCondition,
    language: wordsLanguage,
  );
}

class _ResearchMultiplierCards extends StatelessWidget {
  const _ResearchMultiplierCards();

  @override
  Widget build(final BuildContext context) {
    final technologiesCubit = context.watch<TechnologiesCubit>();
    final technology = technologiesCubit.researchingTechnology;
    final locale = useLocale(context);
    final (:isUnlocked, :percentage, :investedScore, :requiredScore) =
        _useTechIsUnlocked(context);

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
                          isUnlocked
                              ? const LocalizedMap(
                                  value: {
                                    Languages.en: 'Researched',
                                    Languages.ru: 'Исследовано',
                                    Languages.it: 'Ricercato',
                                  },
                                ).getValue(locale)
                              : const LocalizedMap(
                                  value: {
                                    Languages.en: 'Researching',
                                    Languages.ru: 'Исследуется',
                                    Languages.it: 'Ricercando',
                                  },
                                ).getValue(locale),
                          style: context.textTheme.labelMedium?.copyWith(
                            color: context.colorScheme.tertiary,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text(
                                  '${technology?.title.getValue(locale)}',
                                  style: context.textThemeBold.titleLarge,
                                ),
                              ),
                            ),
                            if (!isUnlocked) ...[
                              const Gap(4),
                              UiTechnologyProgress(
                                percentage: percentage,
                                investedScore: investedScore,
                                requiredScore: requiredScore,
                              ),
                            ],
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              if (!isUnlocked) const _ChangeResearchingTechnology(),
            ],
          ),
        ).animate().fadeIn(),
        if (!isUnlocked)
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
          )
        else ...[
          const _SelectTechnologyCard(),
          const Gap(8),
        ],
      ],
    );
  }
}

class UiTechnologyProgress extends StatelessWidget {
  const UiTechnologyProgress({
    required this.percentage,
    required this.investedScore,
    required this.requiredScore,
    super.key,
  });
  final double percentage;
  final double investedScore;
  final double requiredScore;
  @override
  Widget build(final BuildContext context) {
    var pointsLeft = requiredScore - investedScore;
    pointsLeft = pointsLeft < 0 ? 0 : pointsLeft;
    return Tooltip(
      // TODO(arenukvern): l10n
      message: '${pointsLeft.formattedScore} left',
      child: Stack(
        children: [
          Positioned.fill(
            child: CircularProgressIndicator(
              value: percentage,
              color: context.colorScheme.tertiary,
            ),
          ),
          SizedBox.square(
            dimension: 35,
            child: Center(
              child: Text(
                // '${(percentage * 100).toStringAsFixed(0)}%',
                // '${investedScore.formattedScore}/${requiredScore.formattedScore}',
                '${pointsLeft.formattedScore}',
                style: context.textTheme.labelMedium?.copyWith(
                  color: context.colorScheme.tertiary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TechnologyMultiplierCard extends StatelessWidget {
  const _TechnologyMultiplierCard({
    required this.type,
  });
  final EnergyMultiplierType type;
  @override
  Widget build(final BuildContext context) {
    final composable = useApplyingScoreComposable(type: type, context: context);

    return UiActionButton(
      constraints: const BoxConstraints(minWidth: 30),
      onCompleted: () =>
          composable.compositionState.onInvestToResearchSelected(type),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${composable.applyingScore.value.formattedScore}',
            textAlign: TextAlign.center,
            style: context.textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}

class _ActionsTabView extends StatelessWidget {
  const _ActionsTabView({super.key});

  @override
  Widget build(final BuildContext context) => const Row(
        children: [
          Flexible(child: HeatEngineView()),
          HotAirBaloonActionsView(),
        ],
      );
}
