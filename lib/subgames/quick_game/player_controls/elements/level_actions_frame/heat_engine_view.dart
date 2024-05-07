import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';

// TODO(arenukvern): add as freezed
class EngineCrystalModel {
  EngineCrystalModel({
    required this.id,
  });
  final String id;
}

class HeatEngineView extends StatefulWidget {
  const HeatEngineView({super.key});

  @override
  State<HeatEngineView> createState() => _HeatEngineViewState();
}

class _HeatEngineViewState extends State<HeatEngineView> {
  static const _crystalCellDimension = 34.0;
  // TODO(arenukvern): save engine crystal
  final List<EngineCrystalModel?> _cellsCrystals = [];
  final List<EngineCrystalModel?> _engineCrystals = [];
  EngineMechanics get _engineMechanics =>
      context.read<MechanicsCollection>().engine;

  LevelPlayersBloc get _levelPlayerBloc => context.read<LevelPlayersBloc>();

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

  void _onCrystalPlacedToEngine(
    final int index,
    final EngineCrystalModel crystal,
  ) {
    _engineCrystals[index] = crystal;
    _cellsCrystals[index] = null;
    setState(() {});
    _changePower();
  }

  void _onCrystalPlacedToStorage(
    final int index,
    final EngineCrystalModel crystal,
  ) {
    _cellsCrystals[index] = crystal;
    _engineCrystals[index] = null;
    setState(() {});
    _changePower();
  }

  void _changePower() {
    final powerUsage = _engineMechanics
        .convertCrystalCountToPowerUsage(_engineCrystals.nonNulls.length);
    _levelPlayerBloc.onPowerUsageChange('$powerUsage');
  }

  @override
  Widget build(final BuildContext context) => Column(
        children: [
          const Gap(8),
          const Text('Heat generator'),
          const Spacer(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Gap(8),
              Card.outlined(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Column(
                    children: [
                      const Gap(4),
                      ...List.generate(
                        _cellsCrystals.length,
                        (final index) {
                          final crystal = _cellsCrystals[index];
                          return _EngineCrystalCell(
                            key: ValueKey(index),
                            crystal: crystal,
                            index: index,
                            cellDimension: _crystalCellDimension,
                            onCrystalPlaced: (final crystal) =>
                                _onCrystalPlacedToStorage(index, crystal),
                          );
                        },
                      ),
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
                          ...List.generate(
                            _engineCrystals.length,
                            (final index) {
                              final crystal = _engineCrystals[index];
                              return _EngineWaveRow(
                                key: ValueKey(index),
                                cellDimension: _crystalCellDimension,
                                crystal: crystal,
                                index: index,
                                onCrystalPlaced: (final crystal) =>
                                    _onCrystalPlacedToEngine(index, crystal),
                              );
                            },
                          ),
                        ],
                      ),
                      const Gap(8),
                      const Text('Heat\npower'),
                      const Gap(8),
                      AnimatedProgressBar(
                        backgroundColor: Colors.green[200],
                        color: Colors.green[600],
                        value: _engineCrystals.nonNulls.length /
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
          const Spacer(),
        ],
      );
}

class _EngineCrystalCell extends StatelessWidget {
  const _EngineCrystalCell({
    required this.index,
    required this.crystal,
    required this.onCrystalPlaced,
    required this.cellDimension,
    super.key,
  });
  final int index;
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
    super.key,
  });
  final bool isActive;
  final bool isFilled;
  final bool isForEngine;
  final EngineCrystalModel? crystal;
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
        borderRadius:
            isActive ? BorderRadius.circular(4) : BorderRadius.circular(16),
        side: BorderSide(
          color: isActive ? activeColor : color,
        ),
      ),
      margin: const EdgeInsets.all(2),
      child: SizedBox.square(
        dimension: cellDimension,
        child: isFilled
            ? _EngineCrystalWidget(
                crystal: crystal!,
                isActive: isForEngine,
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
    this.dimension = 32,
    super.key,
  });
  final double dimension;
  final EngineCrystalModel crystal;
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
    super.key,
  });
  final int index;
  final double cellDimension;
  final EngineCrystalModel? crystal;
  final ValueChanged<EngineCrystalModel> onCrystalPlaced;

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

class AnimatedProgressBar extends StatelessWidget {
  const AnimatedProgressBar({
    required this.height,
    required this.width,
    required this.value,
    required this.backgroundColor,
    required this.color,
    this.border,
    this.borderRadiusValue = 24,
    super.key,
  });
  final double height;
  final double width;
  final Border? border;
  final double borderRadiusValue;

  /// from 0 to 1
  final double value;
  final Color? backgroundColor;
  final Color? color;

  @override
  Widget build(final BuildContext context) {
    final borderRadius = BorderRadius.all(
      Radius.elliptical(borderRadiusValue, borderRadiusValue),
    );
    final isVertical = height > width;
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: borderRadius,
              border: border,
            ),
          ),
          Positioned(
            left: isVertical ? 0 : 0,
            top: isVertical ? null : 0,
            right: isVertical ? 0 : null,
            bottom: isVertical ? 0 : 0,
            child: AnimatedContainer(
              duration: 250.milliseconds,
              curve: Curves.easeInOut,
              height: isVertical ? height * value : null,
              width: isVertical ? null : width * value,
              decoration: BoxDecoration(
                color: color,
                borderRadius: borderRadius,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
