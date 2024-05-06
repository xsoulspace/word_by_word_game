import 'package:flutter/material.dart';
import 'package:wbw_design_core/wbw_design_core.dart';

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
                const Text('Heat\npower'),
                const Gap(8),
                RotatedBox(
                  quarterTurns: 3,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 60),
                    child: LinearProgressIndicator(
                      borderRadius: BorderRadius.circular(24),
                      color: Colors.green[600],
                      value: _engineCrystals.nonNulls.length /
                          _cellsCrystals.length,
                    ),
                  ),
                ),
                const Gap(8),
              ],
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
          width: 34,
          height: 34,
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
      width: 32,
      height: 32,
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
          width: 34,
          height: 34,
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
