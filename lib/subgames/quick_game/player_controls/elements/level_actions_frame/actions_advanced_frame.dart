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
    final locale = useLocale(context);
    final textTheme = context.textTheme;
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            padding: EdgeInsets.zero,
            labelPadding: EdgeInsets.zero,
            tabs: [
              (
                title: const LocalizedMap(
                  value: {
                    Languages.en: 'Energy',
                    Languages.ru: 'Энергия',
                    Languages.it: 'Energia',
                  },
                ),
                iconChildren: [
                  Image.asset(
                    UiAssetHelper.useImagePath(UiIcons.fire.path),
                    width: 24,
                    height: 24,
                  ),
                ],
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
                ]
              ),
              (
                title: const LocalizedMap(
                  value: {
                    Languages.en: 'Technology',
                    Languages.ru: 'Технология',
                    Languages.it: 'Tecnologia',
                  },
                ),
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
                        Text(e.title.getValue(locale)),
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
                const _ActionsTabView(),
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
            '${applyingScore.formattedScore}',
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

({bool isUnlocked, double percentage}) _useTechIsUnlocked(
  final BuildContext context,
) {
  final mechanics = context.read<MechanicsCollection>();
  final technologiesCubit = context.watch<TechnologiesCubit>();
  final technologyProgress = technologiesCubit.researchingTechnologyProgress;
  final unlockCondition = technologyProgress?.unlockCondition;
  if (unlockCondition == null) return (isUnlocked: false, percentage: 0.0);
  return mechanics.technology.checkIsUnlockedForLanguage(
    unlockCondition: unlockCondition,
  );
}

class _ResearchMultiplierCards extends StatelessWidget {
  const _ResearchMultiplierCards();

  @override
  Widget build(final BuildContext context) {
    final technologiesCubit = context.watch<TechnologiesCubit>();
    final technology = technologiesCubit.researchingTechnology;
    final locale = useLocale(context);
    final (:isUnlocked, :percentage) = _useTechIsUnlocked(context);

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
                        FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            '${technology?.title.getValue(locale)}',
                            style: context.textThemeBold.titleLarge,
                          ),
                        ),
                        if (!isUnlocked) ...[
                          const Gap(8),
                          UiTechnologyLinearProgress(percentage: percentage),
                        ],
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

class UiTechnologyLinearProgress extends StatelessWidget {
  const UiTechnologyLinearProgress({
    required this.percentage,
    super.key,
  });
  final double percentage;
  @override
  Widget build(final BuildContext context) => LinearProgressIndicator(
        value: percentage,
        borderRadius: BorderRadius.circular(8),
      ).animate().fadeIn();
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
            '${composable.applyingScore.formattedScore}',
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
        children: [Flexible(child: HeatEnginePanel())],
      );
}

// TODO(arenukvern): add as freezed
class EngineCrystalModel {
  EngineCrystalModel({
    required this.id,
  });
  final String id;
}

class HeatEnginePanel extends StatefulWidget {
  const HeatEnginePanel({super.key});

  @override
  State<HeatEnginePanel> createState() => _HeatEnginePanelState();
}

class _HeatEnginePanelState extends State<HeatEnginePanel> {
  final _cellsCrystals = <EngineCrystalModel?>[
    EngineCrystalModel(id: '1'),
    EngineCrystalModel(id: '2'),
  ];
  late final _engineCrystals = List<EngineCrystalModel?>.generate(
    _cellsCrystals.length,
    (final index) => null,
  );
  @override
  Widget build(final BuildContext context) => Column(
        children: [
          const Text('Engine panel'),
          Card.outlined(
            color: Colors.transparent,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Gap(8),
                Column(
                  children: [
                    const Gap(4),
                    ...List.generate(
                      _cellsCrystals.length,
                      (final index) {
                        final crystal = _cellsCrystals[index];
                        return _EngineCrystalCell(
                          crystal: crystal,
                          index: index,
                          key: ValueKey(index),
                          onCrystalPlaced: (final crystal) {
                            _cellsCrystals[index] = crystal;
                            _engineCrystals[index] = null;
                            setState(() {});
                          },
                        );
                      },
                    ),
                    const Gap(4),
                  ],
                ),
                const Gap(8),
                Card(
                  child: Column(
                    children: [
                      ...List.generate(
                        _engineCrystals.length,
                        (final index) {
                          final crystal = _engineCrystals[index];
                          return _EngineWaveRow(
                            key: ValueKey(index),
                            crystal: crystal,
                            index: index,
                            onCrystalPlaced: (final crystal) {
                              _engineCrystals[index] = crystal;
                              _cellsCrystals[index] = null;
                              setState(() {});
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Text('Heat power'),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 150),
            child: LinearProgressIndicator(
              color: Colors.green[600],
              value: _engineCrystals.nonNulls.length / _cellsCrystals.length,
            ),
          ),
        ],
      );
}

class _EngineCrystalCell extends StatelessWidget {
  const _EngineCrystalCell({
    required this.index,
    required this.crystal,
    required this.onCrystalPlaced,
    super.key,
  });
  final int index;
  final EngineCrystalModel? crystal;
  final ValueChanged<EngineCrystalModel> onCrystalPlaced;

  @override
  Widget build(final BuildContext context) {
    final isFilled = crystal != null;
    return DragTarget<EngineCrystalModel>(
      builder: (final context, final candidateData, final rejectedData) =>
          Card.outlined(
        elevation: candidateData.isNotEmpty ? 4 : 0,
        margin: const EdgeInsets.all(2),
        child: SizedBox(
          width: 28,
          height: 28,
          child: isFilled ? _EngineCrystalWidget(crystal: crystal!) : null,
        ),
      ),
      onAcceptWithDetails: (final details) {
        if (isFilled) return;
        final newCrystal = details.data;
        onCrystalPlaced(newCrystal);
      },
    );
  }
}

class _EngineCrystalWidget extends StatelessWidget {
  const _EngineCrystalWidget({
    required this.crystal,
    super.key,
  });

  final EngineCrystalModel crystal;

  @override
  Widget build(final BuildContext context) {
    final crystalWidget = Container(
      width: 24,
      height: 24,
      color: Colors.amber,
    );
    return Draggable(
      feedback: crystalWidget,
      data: crystal,
      axis: Axis.horizontal,
      childWhenDragging: const SizedBox(),
      child: crystalWidget,
    );
  }
}

class _EngineWaveRow extends StatelessWidget {
  const _EngineWaveRow({
    required this.index,
    required this.crystal,
    required this.onCrystalPlaced,
    super.key,
  });
  final int index;
  final EngineCrystalModel? crystal;
  final ValueChanged<EngineCrystalModel> onCrystalPlaced;

  @override
  Widget build(final BuildContext context) {
    final isFilled = crystal != null;
    return DragTarget<EngineCrystalModel>(
      builder: (final context, final candidateData, final rejectedData) =>
          Card.outlined(
        elevation: candidateData.isNotEmpty ? 4 : 0,
        margin: const EdgeInsets.all(2),
        child: SizedBox(
          width: 28,
          height: 28,
          child: isFilled ? _EngineCrystalWidget(crystal: crystal!) : null,
        ),
      ),
      onAcceptWithDetails: (final details) {
        if (isFilled) return;
        final newCrystal = details.data;
        onCrystalPlaced(newCrystal);
      },
    );
  }
}
