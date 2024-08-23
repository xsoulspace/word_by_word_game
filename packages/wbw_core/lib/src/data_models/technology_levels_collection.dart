part of 'data_models.dart';

typedef TechnologyLevelTuple = ({
  String title,
  List<TechnologyModelId> technologies,
});

class TechnologyLevelsCollection {
  TechnologyLevelsCollection._();
  static final levels = <TechnologyLevelTuple>[
    (
      // TODO(arenukvern): l10n
      title: 'Build & Save',
      technologies: [TechnologyType.buildingTent].toIds(),
    ),
    (
      // TODO(arenukvern): l10n
      title: 'Powering Engine',
      technologies: [TechnologyType.poweringEngine].toIds(),
    ),
    (
      // TODO(arenukvern): l10n
      title: 'Take Off & Landing',
      technologies:
          [TechnologyType.ascending, TechnologyType.descending].toIds(),
    ),
    (
      // TODO(arenukvern): l10n
      title: 'Measuring the Wind',
      technologies: [TechnologyType.buildingWindWaterTower].toIds(),
    ),
    // TODO(arenukvern): add other levels
  ];
}

extension TechnologyTypeX on List<TechnologyType> {
  List<TechnologyModelId> toIds() => map(TechnologyModelId.new).toList();
}
