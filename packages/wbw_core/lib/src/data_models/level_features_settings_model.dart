part of 'data_models.dart';

/// Extension type that represents level feature settings used to control
/// the availability
/// of advanced/adventure mechanics in the game session.
///
/// Provides type-safe, immutable access to allowed feature flags, such as:
/// - [isTechnologiesEnabled]: enables technology trees.
/// - [isWindDirectionChangeEnabled]: allows wind direction changes in flight
/// (may result in unwinnable scenarios).
/// - [isFeaturesAllowed]: enables "adventure" and other advanced gameplay
/// features.
///
/// Uses [from_json_to_json] for robust JSON (de)serialization.
///
/// {@template level_features_settings_model_usage}
/// Example usage:
/// ```dart
/// final settings = LevelFeaturesSettingsModel.fromJson(jsonMap);
/// if (settings.isAdvancedGame) { ... }
/// ```
/// {@endtemplate}
extension type const LevelFeaturesSettingsModel._(Map<String, dynamic> value) {
  factory LevelFeaturesSettingsModel({
    required final bool isTechnologiesEnabled,
    required final bool isWindDirectionChangeEnabled,
    required final bool isFeaturesAllowed,
  }) => LevelFeaturesSettingsModel._({
    'isTechnologiesEnabled': isTechnologiesEnabled,
    'isWindDirectionChangeEnabled': isWindDirectionChangeEnabled,
    'isFeaturesAllowed': isFeaturesAllowed,
  });

  /// Constructs [LevelFeaturesSettingsModel] from a JSON-compatible [Map].
  factory LevelFeaturesSettingsModel.fromJson(final json) {
    final map = jsonDecodeMapAs<String, dynamic>(json);
    return LevelFeaturesSettingsModel._(map);
  }

  /// Returns a JSON-compatible map for serialization.
  Map<String, dynamic> toJson() => value;

  /// Whether the technology tree/progress mechanics are enabled.
  bool get isTechnologiesEnabled =>
      jsonDecodeBool(value['isTechnologiesEnabled']);

  /// If `true`, allows wind change in both directions during play
  /// (removes win scenario).
  bool get isWindDirectionChangeEnabled =>
      jsonDecodeBool(value['isWindDirectionChangeEnabled']);

  /// Whether any advanced/adventure features are enabled for the level.
  bool get isFeaturesAllowed => jsonDecodeBool(value['isFeaturesAllowed']);

  /// Convenience: Returns `true` if both technologies and features are allowed.
  bool get isAdvancedGame => isTechnologiesEnabled && isFeaturesAllowed;

  /// A [LevelFeaturesSettingsModel] instance with all features disabled.
  static const allDisabled = LevelFeaturesSettingsModel._({
    'isTechnologiesEnabled': false,
    'isWindDirectionChangeEnabled': false,
    'isFeaturesAllowed': false,
  });

  /// A [LevelFeaturesSettingsModel] instance with all features enabled.
  static const allEnabled = LevelFeaturesSettingsModel._({
    'isTechnologiesEnabled': true,
    'isWindDirectionChangeEnabled': true,
    'isFeaturesAllowed': true,
  });

  LevelFeaturesSettingsModel copyWith({
    final bool? isTechnologiesEnabled,
    final bool? isWindDirectionChangeEnabled,
    final bool? isFeaturesAllowed,
  }) => LevelFeaturesSettingsModel(
    isTechnologiesEnabled: isTechnologiesEnabled ?? this.isTechnologiesEnabled,
    isWindDirectionChangeEnabled:
        isWindDirectionChangeEnabled ?? this.isWindDirectionChangeEnabled,
    isFeaturesAllowed: isFeaturesAllowed ?? this.isFeaturesAllowed,
  );
}
