// ignore_for_file: invalid_annotation_target

part of 'data_models.dart';

extension type const TechnologyModelId(TechnologyType value) {
  factory TechnologyModelId.fromJson(final value) {
    final String val;
    if (value case {'value': final String value}) {
      val = value;
    } else if (value case final String value) {
      val = value;
    } else {
      throw UnsupportedError(value);
    }
    return TechnologyModelId(TechnologyType.values.byName(val));
  }
  dynamic toJson() => value.name;
}

@freezed
class TechnologyTreeProgressModel with _$TechnologyTreeProgressModel {
  @JsonSerializable(explicitToJson: true)
  const factory TechnologyTreeProgressModel({
    @JsonKey(
      fromJson: TechnologyTreeProgressModel._technologiesFromJson,
      toJson: TechnologyTreeProgressModel._technologiesToJson,
    )
    @Default({})
    final Map<TechnologyModelId, TechnologyProgressModel> technologies,
  }) = _TechnologyTreeProgressModel;
  factory TechnologyTreeProgressModel.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$TechnologyTreeProgressModelFromJson(json);
  const TechnologyTreeProgressModel._();
  static const empty = TechnologyTreeProgressModel();
  static Map<TechnologyModelId, TechnologyProgressModel> _technologiesFromJson(
    final Map<String, dynamic> json,
  ) =>
      json.map(
        (final key, final value) => MapEntry(
          TechnologyModelId.fromJson(jsonDecode(key)),
          TechnologyProgressModel.fromJson(value),
        ),
      );
  static Map<String, dynamic> _technologiesToJson(
    final Map<TechnologyModelId, TechnologyProgressModel> json,
  ) =>
      json.map(
        (final key, final value) =>
            MapEntry(jsonEncode(key.toJson()), value.toJson()),
      );
}

/// Should be short version of [TechnologyModel]
/// and only to store progress.
@freezed
class TechnologyProgressModel with _$TechnologyProgressModel {
  @JsonSerializable(explicitToJson: true)
  const factory TechnologyProgressModel({
    required final TechnologyModelId id,
    required final TechnologyUnlockConditionModel unlockCondition,
  }) = _TechnologyProgressModel;
  factory TechnologyProgressModel.fromJson(final Map<String, dynamic> json) =>
      _$TechnologyProgressModelFromJson(json);
  const TechnologyProgressModel._();
}

/// Should be used as a source of data [title], [type] for
/// technologies.
///
/// To save changes for [unlockCondition] use [TechnologyProgressModel]
@freezed
class TechnologyModel with _$TechnologyModel {
  @JsonSerializable(explicitToJson: true)
  const factory TechnologyModel({
    required final TechnologyModelId id,
    required final LocalizedMap title,
    // TODO(antmalofeev): add icon?
    required final TechnologyUnlockConditionModel unlockCondition,
    @Default(0) final int index,
    final TechnologyModelId? parentTechnologyId,
  }) = _TechnologyModel;
  factory TechnologyModel.fromJson(final Map<String, dynamic> json) =>
      _$TechnologyModelFromJson(json);
  const TechnologyModel._();
  TechnologyType get type => id.value;
}

@freezed
class TechnologyUnlockConditionModel with _$TechnologyUnlockConditionModel {
  @JsonSerializable(explicitToJson: true)
  const factory TechnologyUnlockConditionModel({
    /// Principle: if several words for one language in [languageWords] are used
    /// then [TechnologyModel] is unlocked
    /// for that certain language.
    required final Map<Languages, List<UsefulWordModel>> languageWords,
    @Default(3) final int wordsUnlockThreshold,
  }) = _TechnologyUnlockConditionModel;
  factory TechnologyUnlockConditionModel.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$TechnologyUnlockConditionModelFromJson(json);
  const TechnologyUnlockConditionModel._();
  bool get isUnlocked {
    for (final language in Languages.values) {
      final isAllWordsUsed = languageWords[language]!.every(
        (final word) => word.isUsed,
      );
      if (isAllWordsUsed) return true;
    }
    return false;
  }
}

@freezed
class UsefulWordModel with _$UsefulWordModel {
  @JsonSerializable(explicitToJson: true)
  const factory UsefulWordModel({
    required final FullWordString word,
    @Default(false) final bool isUsed,
  }) = _UsefulWordModel;
  factory UsefulWordModel.fromJson(final Map<String, dynamic> json) =>
      _$UsefulWordModelFromJson(json);
  const UsefulWordModel._();
}

enum TechnologyType {
  safeLanding,
  emergencyLanding,
  ascending,
  descending,
}
