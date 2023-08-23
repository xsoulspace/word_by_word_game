part of 'models.dart';

@immutable
@Freezed(equal: false)
class TechnologyModelId with _$TechnologyModelId, EquatableMixin {
  const factory TechnologyModelId({
    required final TechnologyType value,
  }) = _TechnologyModelId;
  const TechnologyModelId._();
  factory TechnologyModelId.fromJson(final TechnologyType value) =>
      TechnologyModelId(value: value);
  @override
  List<Object?> get props => [value];
}

@freezed
class TechnologyTreeModel with _$TechnologyTreeModel {
  const factory TechnologyTreeModel({
    @Default({}) final Map<TechnologyModelId, TechnologyModel> technologies,
  }) = _TechnologyTreeModel;
  factory TechnologyTreeModel.fromJson(final Map<String, dynamic> json) =>
      _$TechnologyTreeModelFromJson(json);
  const TechnologyTreeModel._();
  static const empty = TechnologyTreeModel();
}

@freezed
class TechnologyTreeProgressModel with _$TechnologyTreeProgressModel {
  const factory TechnologyTreeProgressModel({
    @Default({})
    final Map<TechnologyModelId, TechnologyProgressModel> technologies,
  }) = _TechnologyTreeProgressModel;
  factory TechnologyTreeProgressModel.fromJson(
          final Map<String, dynamic> json) =>
      _$TechnologyTreeProgressModelFromJson(json);
  const TechnologyTreeProgressModel._();
  static const empty = TechnologyTreeProgressModel();
}

/// Should be short version of [TechnologyModel]
/// and only to store progress.
@freezed
class TechnologyProgressModel with _$TechnologyProgressModel {
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
  const factory TechnologyModel({
    required final TechnologyModelId id,
    required final LocalizedMap title,
    // TODO(antmalofeev): add icon?
    required final TechnologyUnlockConditionModel unlockCondition,
    final TechnologyModelId? parentTechnologyId,
  }) = _TechnologyModel;
  factory TechnologyModel.fromJson(final Map<String, dynamic> json) =>
      _$TechnologyModelFromJson(json);
  const TechnologyModel._();
  TechnologyType get type => id.value;
}

@freezed
class TechnologyUnlockConditionModel with _$TechnologyUnlockConditionModel {
  const factory TechnologyUnlockConditionModel({
    required final Map<Languages, List<UsefulWordModel>> languageWords,
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
