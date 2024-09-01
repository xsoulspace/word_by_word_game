part of 'data_models.dart';

typedef TechnologyLevelTuple = ({
  String title,
  List<TechnologyModelId> technologies,
});

/// The order is important, because the level is displayed based on the index
enum TechnologyLevelIndex {
  /// first give player ability to see why it is important to
  /// save some score
  poweringEngine,

  /// give player ability to fly
  takeOffAndLanding,

  /// give player ability to save progress
  buildAndSave,

  /// give player ability to measure the wind
  measuringTheWind,

  /// meaningless, just for convenience
  maxLevel;

  bool operator >(final TechnologyLevelIndex other) => index > other.index;
  bool operator <(final TechnologyLevelIndex other) => index > other.index;
}

class TechnologyLevelsCollection {
  TechnologyLevelsCollection._();
  static final levels = List<TechnologyLevelTuple>.filled(
    /// -1 because maxLevel is not a real level
    TechnologyLevelIndex.values.length - 1,
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
