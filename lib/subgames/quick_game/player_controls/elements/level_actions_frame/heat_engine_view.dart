import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/subgames/quick_game/overlays/gui_widgets/weather_bar.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/animated_progress_bar.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/level_actions_frame/actions_simple_frame.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/word_composition_bar/word_composition_bar.dart';

// TODO(arenukvern): add as freezed
class EngineCrystalModel {
  EngineCrystalModel({required this.id});
  final String id;
}

class HeatEngineView extends StatelessWidget with TechLevelMixin {
  const HeatEngineView({super.key});

  @override
  Widget build(final BuildContext context) {
    final (isUnblocked: isEngineUnblocked, isPlaying: _, isAdvancedGame: _) =
        useTechLevelAvailable(context, TechnologyLevelIndex.takeOffAndLanding);
    if (!isEngineUnblocked) return const SizedBox();
    return const HeatEngineViewBody();
  }
}

class UiCompletableText extends StatelessWidget {
  const UiCompletableText({
    required this.text,
    required this.isCompleted,
    super.key,
  });
  final bool isCompleted;
  final String text;
  @override
  Widget build(final BuildContext context) => Text(
    text,
    style: DefaultTextStyle.of(context).style.copyWith(
      decoration: isCompleted ? TextDecoration.lineThrough : null,
    ),
  );
}

class TechnologyLockedCard extends StatelessWidget {
  const TechnologyLockedCard({
    required this.children,
    required this.isLocked,
    super.key,
  });
  final List<Widget> children;
  final bool isLocked;
  @override
  Widget build(final BuildContext context) => Visibility(
    visible: isLocked,
    child: Stack(
      children: [
        Positioned.fill(
          child: const SizedBox().blurred(
            blurColor: context.colorScheme.tertiary,
            colorOpacity: 0.7,
            blur: 2,
          ),
        ),
        DefaultTextStyle.merge(
          style: context.textThemeBold.bodyLarge?.copyWith(
            color: context.colorScheme.onTertiary,
            decorationColor: context.colorScheme.tertiary,
            decorationThickness: 5,
          ),
          child: Container(
            alignment: Alignment.center,
            // color: context.colorScheme.secondaryContainer.wit,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.lock_outline_rounded,
                  color: context.colorScheme.onTertiary,
                ),
                const Gap(8),
                Text(
                  'Requires technologies',
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: context.colorScheme.onTertiary,
                  ),
                ),
                const Gap(4),
                ...children,
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

const kEnergyMovementMultiplier = EnergyMultiplierType.m1;

class HeatEngineViewBody extends StatefulHookWidget {
  const HeatEngineViewBody({super.key});

  @override
  State<HeatEngineViewBody> createState() => _HeatEngineViewBodyState();
}

class _HeatEngineViewBodyState extends State<HeatEngineViewBody> {
  static const _crystalCellDimension = 34.0;
  // TODO(arenukvern): save engine crystal
  final List<EngineCrystalModel?> _cellsCrystals = [];
  final List<EngineCrystalModel?> _engineCrystals = [];
  EngineMechanics get _engineMechanics =>
      context.read<MechanicsCollection>().engine;

  LevelPlayersBloc get _levelPlayerBloc => context.read<LevelPlayersBloc>();
  GuiWordCompositionCubit get _wordCompositionCubit =>
      context.read<GuiWordCompositionCubit>();

  @override
  void initState() {
    super.initState();
    final engineCrystalsCount = _engineMechanics
        .convertPowerUsageToCrystalCount(_levelPlayerBloc.powerUsage);
    final totalCrystalsCount = _engineMechanics.crystalsCount;
    _cellsCrystals.length = _engineMechanics.crystalsCount;
    _engineCrystals.length = _engineMechanics.crystalsCount;
    final crystals = List<EngineCrystalModel?>.generate(
      totalCrystalsCount,
      (final i) => EngineCrystalModel(id: '$i'),
    );
    for (var i = 0; i < totalCrystalsCount; i++) {
      final crystal = crystals[i];
      if (i < engineCrystalsCount) {
        _engineCrystals[i] = crystal;
      } else {
        _cellsCrystals[i] = crystal;
      }
    }
  }

  void _onCrystalPlacedToEngine({
    required final int index,
    required final EngineCrystalModel crystal,
  }) {
    _engineCrystals[index] = crystal;
    _cellsCrystals[index] = null;
    setState(() {});
    _changePower();
  }

  void _onCrystalPlacedToStorage({
    required final int index,
    required final EngineCrystalModel crystal,
  }) {
    _cellsCrystals[index] = crystal;
    _engineCrystals[index] = null;
    setState(() {});
    _changePower();
  }

  void _changePower() {
    final powerUsage = _engineMechanics.convertCrystalCountToPowerUsage(
      _engineCrystals.nonNulls.length,
    );
    _levelPlayerBloc.onPowerUsageChange('$powerUsage');
    WidgetsBinding.instance.addPostFrameCallback((final _) async {
      await Future.delayed(500.milliseconds);
      _wordCompositionCubit.onCrystalMoved(kEnergyMovementMultiplier);
    });
  }

  @override
  Widget build(final BuildContext context) {
    final composable = useApplyingScoreComposable(
      type: kEnergyMovementMultiplier,
      context: context,
    );
    final movementScore = composable.applyingScore;

    return Column(
      children: [
        const Spacer(),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Gap(8),
            Card.outlined(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Column(
                  children: [
                    const Gap(4),
                    ...List.generate(_cellsCrystals.length, (final index) {
                      final crystal = _cellsCrystals[index];
                      return _EngineCrystalCell(
                        key: ValueKey(index),
                        crystal: crystal,
                        index: index,
                        movementScore: movementScore,
                        cellDimension: _crystalCellDimension,
                        onCrystalPlaced: (final crystal) =>
                            _onCrystalPlacedToStorage(
                              index: index,
                              crystal: crystal,
                            ),
                      );
                    }),
                    const Gap(4),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Row(
                  children: [
                    Column(
                      children: [
                        ...List.generate(_engineCrystals.length, (final index) {
                          final crystal = _engineCrystals[index];
                          return _EngineWaveRow(
                            key: ValueKey(index),
                            cellDimension: _crystalCellDimension,
                            movementScore: movementScore,
                            crystal: crystal,
                            index: index,
                            onCrystalPlaced: (final crystal) =>
                                _onCrystalPlacedToEngine(
                                  index: index,
                                  crystal: crystal,
                                ),
                          );
                        }),
                      ],
                    ),
                    const Gap(8),
                    AnimatedProgressBar(
                      backgroundColor: context.colorScheme.error.withValues(
                        alpha: .3,
                      ),
                      color: context.colorScheme.error,
                      value:
                          _engineCrystals.nonNulls.length /
                          _cellsCrystals.length,
                      height: 70,
                      width: 12,
                    ),
                    const Gap(4),
                  ],
                ),
              ),
            ),
            const Gap(8),
          ],
        ),
        const Text('Heat generator'),
        const Spacer(),
        const Gap(8),
      ],
    );
  }
}

class _EngineCrystalCell extends StatelessWidget {
  const _EngineCrystalCell({
    required this.index,
    required this.crystal,
    required this.onCrystalPlaced,
    required this.cellDimension,
    required this.movementScore,
    super.key,
  });
  final int index;
  final ApplyingScoreType movementScore;
  final EngineCrystalModel? crystal;
  final ValueChanged<EngineCrystalModel> onCrystalPlaced;
  final double cellDimension;
  @override
  Widget build(final BuildContext context) {
    final isFilled = crystal != null;
    return DragTarget<EngineCrystalModel>(
      builder: (final context, final candidateData, final rejectedData) {
        final isActive = candidateData.isNotEmpty || isFilled;
        return _CrystalCell(
          cellDimension: cellDimension,
          crystal: crystal,
          isActive: isActive,
          isFilled: isFilled,
          movementScore: movementScore,
          isForEngine: false,
        );
      },
      onAcceptWithDetails: (final details) {
        if (isFilled) return;
        final newCrystal = details.data;
        onCrystalPlaced(newCrystal);
      },
    );
  }
}

class _CrystalCell extends StatelessWidget {
  const _CrystalCell({
    required this.isActive,
    required this.isFilled,
    required this.cellDimension,
    required this.crystal,
    required this.isForEngine,
    required this.movementScore,
    super.key,
  });
  final bool isActive;
  final bool isFilled;
  final bool isForEngine;
  final EngineCrystalModel? crystal;
  final ApplyingScoreType movementScore;
  final double cellDimension;
  @override
  Widget build(final BuildContext context) {
    final Color activeColor;
    final Color color;
    if (isForEngine) {
      activeColor = Colors.green.shade600;
      color = Colors.green.shade100;
    } else {
      activeColor = Colors.lightBlue.shade600;
      color = Colors.lightBlue.shade100;
    }
    return Card.outlined(
      shape: BeveledRectangleBorder(
        borderRadius: isActive
            ? BorderRadius.circular(4)
            : BorderRadius.circular(16),
        side: BorderSide(color: isActive ? activeColor : color),
      ),
      margin: const EdgeInsets.all(2),
      child: SizedBox.square(
        dimension: cellDimension,
        child: isFilled
            ? _EngineCrystalWidget(
                crystal: crystal!,
                isActive: isForEngine,
                movementScore: movementScore,
              )
            : null,
      ),
    );
  }
}

class _EngineCrystalWidget extends StatelessWidget {
  const _EngineCrystalWidget({
    required this.crystal,
    required this.isActive,
    required this.movementScore,
    this.dimension = 32,
    super.key,
  });
  final double dimension;
  final EngineCrystalModel crystal;
  final ApplyingScoreType movementScore;
  final bool isActive;

  @override
  Widget build(final BuildContext context) {
    const borderRadius = BorderRadius.all(Radius.elliptical(8, 8));
    final crystalWidget = MouseRegion(
      cursor: SystemMouseCursors.grab,
      child: AnimatedContainer(
        duration: 250.milliseconds,
        width: dimension,
        height: dimension,
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: isActive ? Colors.green.shade400 : Colors.lightBlue.shade200,
        ),
        alignment: Alignment.center,
        child: Text(
          '${movementScore.value.formattedScore}',
          textAlign: TextAlign.center,
          style: context.textThemeBold.titleSmall,
        ),
      ),
    );
    return Draggable(
      feedback: Material(
        borderRadius: borderRadius,
        elevation: 8,
        child: crystalWidget,
      ),
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
    required this.cellDimension,
    required this.movementScore,
    super.key,
  });
  final int index;
  final double cellDimension;
  final EngineCrystalModel? crystal;
  final ValueChanged<EngineCrystalModel> onCrystalPlaced;
  final ApplyingScoreType movementScore;

  @override
  Widget build(final BuildContext context) {
    final isFilled = crystal != null;
    return DragTarget<EngineCrystalModel>(
      builder: (final context, final candidateData, final rejectedData) {
        final isActive = candidateData.isNotEmpty || isFilled;
        return _CrystalCell(
          cellDimension: cellDimension,
          crystal: crystal,
          isActive: isActive,
          isFilled: isFilled,
          movementScore: movementScore,
          isForEngine: true,
        );
      },
      onAcceptWithDetails: (final details) {
        if (isFilled) return;
        final newCrystal = details.data;
        onCrystalPlaced(newCrystal);
      },
    );
  }
}

class UiTechnologyCircle extends StatelessWidget {
  const UiTechnologyCircle({
    required this.tooltipMessage,
    required this.percentage,
    required this.filledColor,
    required this.textColor,
    required this.borderColor,
    required this.backgroundColor,
    required this.text,
    required this.title,
    this.onPressed,
    super.key,
  });
  final String text;
  final String title;
  final double percentage;
  final Color filledColor;
  final Color borderColor;
  final Color textColor;
  final Color backgroundColor;
  final VoidCallback? onPressed;
  final Map<UiLanguage, String> tooltipMessage;

  @override
  Widget build(final BuildContext context) {
    final shadows = [
      Shadow(blurRadius: 0.2, color: borderColor),
      Shadow(blurRadius: 0.2, color: borderColor),
    ];
    const dimension = 48.0;
    final locale = useLocale(context);

    return Tooltip(
      message: LocalizedMap(tooltipMessage).getValue(locale),
      child: UiBaseButton(
        onPressed: onPressed,
        builder: (final context, final focused, final onlyFocused) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.centerRight,
              children: [
                AnimatedProgressBar(
                  width: dimension,
                  height: dimension,
                  value: percentage,
                  backgroundColor: backgroundColor,
                  color: filledColor,
                  borderRadiusValue: 52,
                  border: Border.all(color: borderColor),
                ),
                Positioned.fill(
                  child: Center(
                    child: Text(
                      text,
                      style: context.textThemeBold.titleLarge!.copyWith(
                        color: textColor,
                        shadows: shadows,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              title,
              style: context.textTheme.labelMedium!.copyWith(
                color: textColor,
                shadows: [
                  Shadow(
                    blurRadius: 1,
                    color: borderColor.withValues(alpha: 1),
                  ),
                  Shadow(
                    blurRadius: 1,
                    color: borderColor.withValues(alpha: 1),
                  ),
                  Shadow(
                    blurRadius: 1,
                    color: borderColor.withValues(alpha: 1),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
