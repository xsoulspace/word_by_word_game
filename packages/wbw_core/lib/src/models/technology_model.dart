part of 'models.dart';

@immutable
@Freezed(fromJson: false, toJson: false, equal: false)
class TechnologyModelId with _$TechnologyModelId, EquatableMixin {
  const factory TechnologyModelId({
    required final String value,
  }) = _TechnologyModelId;
  const TechnologyModelId._();
  factory TechnologyModelId.fromJson(final String value) =>
      TechnologyModelId(value: value);
  static const empty = TechnologyModelId(value: '');
  bool get isEmpty => value.isEmpty;
  bool get isNotEmpty => value.isNotEmpty;
  String toJson() => value;
  static String toJsonString(final TechnologyModelId id) => id.value;
  @override
  List<Object?> get props => [value];
}

@freezed
class TechnologyTreeModel with _$TechnologyTreeModel {
  const factory TechnologyTreeModel({
    @Default([]) final List<TechnologyModel> technologies,
  }) = _TechnologyTreeModel;
  factory TechnologyTreeModel.fromJson(final Map<String, dynamic> json) =>
      _$TechnologyTreeModelFromJson(json);
  const TechnologyTreeModel._();
  static const empty = TechnologyTreeModel();
}

@freezed
class TechnologyModel with _$TechnologyModel {
  const factory TechnologyModel({
    required final TechnologyModelId id,
    required final LocalizedMap title,
    // TODO(antmalofeev): add icon?
    required final TechnologyUnlockConditionModel unlockCondition,
    required final TechnologyType type,
    final TechnologyModelId? parentTechnologyId,
  }) = _TechnologyModel;
  factory TechnologyModel.fromJson(final Map<String, dynamic> json) =>
      _$TechnologyModelFromJson(json);
  const TechnologyModel._();
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
