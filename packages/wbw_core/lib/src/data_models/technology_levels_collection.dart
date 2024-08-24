part of 'data_models.dart';

typedef TechnologyLevelTuple = ({
  String title,
  List<TechnologyModelId> technologies,
});

enum TechnologyLevelIndex {
  poweringEngine,
  buildAndSave,
  takeOffAndLanding,
  measuringTheWind;

  bool operator >(final TechnologyLevelIndex other) => index > other.index;
  bool operator <(final TechnologyLevelIndex other) => index > other.index;
}

class TechnologyLevelsCollection {
  TechnologyLevelsCollection._();
  static final levels = List<TechnologyLevelTuple>.filled(
    TechnologyLevelIndex.values.length,
    (
      title: '',
      technologies: [],
    ),
  )
        ..[TechnologyLevelIndex.buildAndSave.index] = (
          // TODO(arenukvern): l10n
          title: 'Build & Save',
          technologies: [TechnologyType.buildingTent].toIds(),
        )
        ..[TechnologyLevelIndex.poweringEngine.index] = (
          // TODO(arenukvern): l10n
          title: 'Powering Engine',
          technologies: [TechnologyType.poweringEngine].toIds(),
        )
        ..[TechnologyLevelIndex.takeOffAndLanding.index] = (
          // TODO(arenukvern): l10n
          title: 'Take Off & Landing',
          technologies:
              [TechnologyType.ascending, TechnologyType.descending].toIds(),
        )
        ..[TechnologyLevelIndex.measuringTheWind.index] = (
          // TODO(arenukvern): l10n
          title: 'Measuring the Wind',
          technologies: [TechnologyType.buildingWindWaterTower].toIds(),
        )

      //  add other levels
      ;
}

extension TechnologyTypeX on List<TechnologyType> {
  List<TechnologyModelId> toIds() => map(TechnologyModelId.new).toList();
}
