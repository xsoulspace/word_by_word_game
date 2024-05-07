/// Some foundation science ideas:
///
/// Turn waste heat into sound and sound into electricity
/// https://www.americanscientist.org/article/a-sound-use-for-heat
///
/// Piezoelectricity and the Piezoelectric Effect
/// https://sciencenotes.org/piezoelectricity-and-the-piezoelectric-effect/
///
/// Articles on the topic of converting heat into sound
/// and sound into electricity:
///
/// - "Heat-to-sound converter" -
///   - https://www.researchgate.net/publication/305722594_Thermoacoustic_Effect_the_Power_of_Conversion_of_Sound_Energy_Heat_Energy_Review
///
/// - "Harvesting heat energy with sound"
///   - https://www.sciencedirect.com/science/article/abs/pii/S2211285518308449
///
/// - "Acoustic Harvesting of Heat from Wind Turbines"
///   - https://www.acentech.com/resources/acoustic-energy-harvesting/
///
/// - "Piezoelectric Materials"
///   - https://en.wikipedia.org/wiki/List_of_piezoelectric_materials
///   - https://en.wikipedia.org/w/index.php?search=Piezoelectric+materials&title=Special:Search&ns0=1&searchToken=7oltsamgon379lhg4e7lqy43o
///
/// - "Feroelectricity"
///   - https://en.wikipedia.org/wiki/Ferroelectricity
///
/// - "Piezoelectric Materials Market Analysis and Forecast to 2025"
///   - https://www.industryarc.com/Research/Composites-Piezoelectric-Material-Market-Research-501454
///   - https://teletype.in/@maria-blog/IngTWsw5
class EngineMechanics {
  EngineMechanics();
  static const _crystalCountToPowerUsageMap = <int, double>{
    0: 0,
    1: 0.4,
    2: 0.75,
  };
  static final _powerUsageToCrystalCount = Map.fromIterable(
    _crystalCountToPowerUsageMap.entries.map(
      (final e) => MapEntry(e.value, e.key),
    ),
  );
  int get crystalsCount => _crystalCountToPowerUsageMap.length - 1;

  /// above 0.75 or volumeIncreaseRatio or maxVolume
  /// should be increased
  ///
  /// 0.75, max
  /// 0.4, flight min
  /// 0, min
  double convertCrystalCountToPowerUsage(final int count) => switch (count) {
        <= 2 => _crystalCountToPowerUsageMap[count] ?? 0,
        _ => _crystalCountToPowerUsageMap.values.last,
      };

  int convertPowerUsageToCrystalCount(final double value) =>
      _powerUsageToCrystalCount[value] ?? 0;
}
