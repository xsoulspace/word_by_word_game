import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:word_by_word_game/common_imports.dart';

part 'technologies_cubit.freezed.dart';

typedef _WordTechnologyPairTuple = ({
  TechnologyModelId id,
  int index,
  UiLanguage language
});

@freezed
class TechnologiesCubitState with _$TechnologiesCubitState {
  const factory TechnologiesCubitState({
    @Default(TechnologyTreeProgressModel.empty)
    final TechnologyTreeProgressModel progress,
  }) = _TechnologiesCubitState;
  const TechnologiesCubitState._();
}

class TechnologiesCubitDto {
  TechnologiesCubitDto(final BuildContext context)
      : mechanics = context.read(),
        statesStatusesCubit = context.read();
  final StatesStatusesCubit statesStatusesCubit;
  final MechanicsCollection mechanics;
}

class TechnologiesCubit extends Cubit<TechnologiesCubitState>
    implements WorldTickConsumable {
  TechnologiesCubit(final BuildContext context)
      : dto = TechnologiesCubitDto(context),
        super(const TechnologiesCubitState());
  final TechnologiesCubitDto dto;
  @override
  void onConsumeTickEvent() {}

  void onResearchSpecificTechnology({
    required final TechnologyModelId? technologyId,
    required final ResearchTechnologyEvent event,
  }) =>
      updateProgress((final oldProgressTree) {
        if (technologyId == null) {
          assert(false, 'no technology selected');
          return oldProgressTree;
        }
        final techProgress = _getTechnologyProgress(
          technologyId: technologyId,
          progressTree: oldProgressTree,
        );
        if (techProgress == null) {
          assert(false, 'no technology selected');
          return oldProgressTree;
        }
        final investedResearchPoints =
            (techProgress.unlockCondition.investedResearchPoints) +
                event.score.value;
        final updatedProgress = techProgress.copyWith.unlockCondition
            .call(investedResearchPoints: investedResearchPoints);
        final updatedAllProgresses = oldProgressTree.copyWith(
          technologies: {...oldProgressTree.technologies}..[techProgress.id] =
              updatedProgress,
        );
        return updatedAllProgresses;
      });
  void onResearchTechnology(final ResearchTechnologyEvent event) {}

  TechnologyProgressModel? _getTechnologyProgress({
    required final TechnologyModelId technologyId,
    required final TechnologyTreeProgressModel progressTree,
  }) {
    TechnologyProgressModel? techProgress =
        progressTree.technologies[technologyId];
    if (techProgress == null) {
      final technology = _technologies[technologyId];
      if (technology == null) {
        assert(false, 'no technology with id $technologyId');
      } else {
        techProgress = TechnologyProgressModel(
          id: technologyId,
          unlockCondition: technology.unlockCondition,
        );
      }
    }
    return techProgress;
  }

  void onWordAccepted({
    required final String word,
    required final ScoreModel score,
  }) {
    final pair = _wordTechnologyPair[word];
    updateProgress(
      (final oldProgressTree) {
        TechnologyProgressModel? techProgress;
        if (pair != null) {
          final (:id, :index, :language) = pair;
          techProgress = _getTechnologyProgress(
            technologyId: id,
            progressTree: oldProgressTree,
          );
          if (techProgress != null) {
            final languageWordsMap = {
              ...techProgress.unlockCondition.languageWords,
            };
            final languageWords = languageWordsMap[language] ?? [];
            if (languageWords.length > index) {
              final languageWord = languageWords[index];
              languageWords[index] = languageWord.copyWith(isUsed: true);
              languageWordsMap[language] = languageWords;
            } else {
              assert(false, 'index out of bounds');
            }
            final unlockCondition = techProgress.unlockCondition.copyWith(
              languageWords: languageWordsMap,
            );
            techProgress =
                techProgress.copyWith(unlockCondition: unlockCondition);
          }
        }

        return oldProgressTree.copyWith(
          technologies: {
            ...oldProgressTree.technologies,
            if (techProgress != null) techProgress.id: techProgress,
          },
          investedResearchScore:
              oldProgressTree.investedResearchScore + score.value,
        );
      },
    );
  }

  void updateProgress(
    final TechnologyTreeProgressModel Function(
      TechnologyTreeProgressModel oldProgress,
    ) updateCallback,
  ) =>
      emit(state.copyWith(progress: updateCallback(progress)));

  void reloadState({
    required final TechnologiesCubitState state,
    required final Map<TechnologyModelId, TechnologyModel> technologies,
  }) {
    _wordTechnologiesPairsCache = null;
    _technologies = technologies;
    emit(state);
  }

  TechnologyTreeProgressModel get progress => state.progress;

  var _technologies = <TechnologyModelId, TechnologyModel>{};
  List<TechnologyLevelTuple> get levels => TechnologyLevelsCollection.levels;

  ({
    String title,
    List<TechnologyModelId> technologies,
    TechnologyLevelIndex levelIndex,
    ScoreModel scoreLeftForNextLevel,
    List<double> scoresByLevel,
  }) getCurrentLevel() {
    final investedResearchScore = progress.investedResearchScore;
    final (:levelIndex, :scoreLeftForNextLevel, :scoresByLevel) =
        dto.mechanics.technology.getCurrentAchievedLevelIndex(
      // TODO(arenukvern): description
      allInvesetedScore: investedResearchScore + 0,
      levels: levels,
      technologies: technologies,
    );
    if (levelIndex == TechnologyLevelIndex.maxLevel) {
      return (
        levelIndex: levelIndex,
        scoreLeftForNextLevel: scoreLeftForNextLevel,
        technologies: [],
        // TODO(arenukvern): l10n
        title: 'Max level',
        scoresByLevel: scoresByLevel,
      );
    }
    final level = levels[levelIndex.index];
    return (
      levelIndex: levelIndex,
      scoreLeftForNextLevel: scoreLeftForNextLevel,
      technologies: level.technologies,
      title: level.title,
      scoresByLevel: scoresByLevel,
    );
  }

  bool isTechLevelUnlocked(final TechnologyLevelIndex levelIndex) =>
      getCurrentLevel().levelIndex > levelIndex;

  Map<TechnologyModelId, TechnologyModel> get technologies => _technologies;

  /// all available technologies in level
  Map<String, _WordTechnologyPairTuple> get _wordTechnologyPair =>
      _wordTechnologiesPairsCache ??= _calculateWordTechnologiesPairs();
  Map<String, _WordTechnologyPairTuple>? _wordTechnologiesPairsCache;
  Map<String, _WordTechnologyPairTuple> _calculateWordTechnologiesPairs() {
    final map = <String, _WordTechnologyPairTuple>{};

    for (final MapEntry(:key, :value) in _technologies.entries) {
      for (final MapEntry(key: language, value: words)
          in value.unlockCondition.languageWords.entries) {
        final entries = words.mapIndexed(
          (final index, final word) => MapEntry(
            word.word,
            (
              id: key,
              index: index,
              language: language,
            ),
          ),
        );
        map.addEntries(entries);
      }
    }
    return map;
  }
}
