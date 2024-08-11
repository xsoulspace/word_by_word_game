part of 'data_models.dart';

typedef TechnologyLevelTuple = ({
  String title,
  List<TechnologyModel> technologies,
});

class TechnologyLevelsCollection {
  TechnologyLevelsCollection._();
  static final levels = <({
    String title,
    List<TechnologyType> technologies,
  })>[
    (
      // TODO(arenukvern): l10n
      title: 'Build & Save',
      technologies: [TechnologyType.buildingTent],
    ),
    (
      // TODO(arenukvern): l10n
      title: 'Powering Engine',
      technologies: [TechnologyType.poweringEngine],
    ),
    (
      // TODO(arenukvern): l10n
      title: 'Take Off & Landing',
      technologies: [TechnologyType.ascending, TechnologyType.descending],
    ),
    // TODO(arenukvern): add other levels
  ];

  List<TechnologyLevelTuple> convertToRuntimeModels({
    required final Map<TechnologyType, TechnologyModel> technologiesMap,
  }) =>
      levels.map(
        (final e) {
          final technologies = e.technologies
              .map((final type) => technologiesMap[type])
              .nonNulls
              .toList();
          return (
            title: e.title,
            technologies: technologies,
          );
        },
      ).toList();
}
