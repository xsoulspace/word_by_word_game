// ignore_for_file: invalid_annotation_target, avoid_classes_with_only_static_members

part of 'level_bloc.dart';

@immutable
@freezed
class LevelBlocState with _$LevelBlocState {
  const factory LevelBlocState({
    @Default(CanvasDataModelId.empty) final CanvasDataModelId id,
    @Default(CurrentWordModel()) final CurrentWordModel currentWord,
    @Default({}) final Map<FullWordString, PlayerProfileModelId> words,
    @Default('') final String latestWord,
    @Default(GamePhaseType.entryWord) final GamePhaseType phaseType,
    @Default(EnergyMultiplierType.m1)
    final EnergyMultiplierType energyMultiplier,

    /// ********************************************
    /// *      NON PERSISTENT
    /// ********************************************
    @Default(WordWarning.none) final WordWarning wordWarning,
    @Default(LevelFeaturesSettingsModel.empty)
    final LevelFeaturesSettingsModel featuresSettings,
    @Default(Locales.fallback) final UiLanguage wordsLanguage,
  }) = _LevelBlocState;
  // ignore: prefer_constructors_over_static_methods
  static LevelBlocState liveFromModel(final LevelModel levelModel) =>
      LevelBlocState(
        phaseType: levelModel.phaseType,
        energyMultiplier: levelModel.actionMultiplier,
        currentWord: levelModel.currentWord,
        latestWord: levelModel.latestWord,
        words: levelModel.words,
        id: levelModel.id,
        wordsLanguage: levelModel.wordsLanguage,
        featuresSettings: levelModel.featuresSettings,
      );
}

enum WordWarning { none, isWritten, isNotCorrect }
