import 'package:flutter_test/flutter_test.dart';
import 'package:map_editor/state/models/saveable_models/saveable_models.dart';
import 'package:wbw_core/wbw_core.dart';

void main() {
  group('ScoreMechanics', () {
    const fullword = 'dictionary';
    const fullwordLength = 'dictionary'.length;
    final scoreMechanics = ScoreMechanics();
    const playerScore = ScoreModel(value: 10);
    final player = PlayerProfileModel.empty.copyWith(
      highscore: const PlayerHighscoreModel(
        score: playerScore,
        maxWordsCount: 1,
        maxLettersCount: 1,
      ),
    );
    test('countPlayerHighscore - with new word', () {
      const score = ScoreModel(value: 20);

      final updatedPlayer = scoreMechanics.countPlayerHighscore(
        word: fullword,
        player: player,
        score: score,
      );

      expect(
        updatedPlayer.highscore,
        equals(
          PlayerHighscoreModel(
            totalLettersCount: fullwordLength + 1,
            maxLettersCount: fullwordLength + 1,
            totalWordsCount: player.highscore.maxWordsCount + 1,
            maxWordsCount: player.highscore.maxWordsCount + 1,
            score: const ScoreModel(value: 30),
          ),
        ),
      );
    });
    test('countPlayerHighscore - without a word with negative score', () {
      const score = ScoreModel(value: -7);

      final updatedPlayer = scoreMechanics.countPlayerHighscore(
        player: player,
        score: score,
      );

      expect(
        updatedPlayer.highscore,
        equals(
          PlayerHighscoreModel(
            maxLettersCount: player.highscore.maxLettersCount,
            totalLettersCount: player.highscore.maxLettersCount,
            maxWordsCount: player.highscore.maxWordsCount,
            totalWordsCount: player.highscore.maxWordsCount,
            score: const ScoreModel(value: 3),
          ),
        ),
      );
    });
    test('checkPlayerAbilityToDecrease - has no ability', () {
      final isAbleToDecrease =
          scoreMechanics.checkPlayerAbilityToDecreaseLetters(
        player: player,
      );

      expect(
        isAbleToDecrease,
        isFalse,
      );
    });
    test('checkPlayerAbilityToDecrease - has ability', () {
      final isAbleToDecrease =
          scoreMechanics.checkPlayerAbilityToDecreaseLetters(
        player: player.copyWith(
          highscore: player.highscore.copyWith(
            score: ScoreModel(
              value: kLetterDecreaseCost,
            ),
          ),
        ),
      );

      expect(
        isAbleToDecrease,
        isTrue,
      );
    });
    test('countPlayerLevelHighscore - when level is finished', () {
      final updatedPlayer = scoreMechanics.countPlayerLevelHighscore(
        player: player,
        isLevelPassed: true,
        levelId: CanvasDataModelId.fromJson('1'),
        maxDistance: 200,
      );
      expect(
        updatedPlayer.levelsHighscores.isNotEmpty,
        isTrue,
      );
      expect(updatedPlayer.levelsHighscores, {
        '1': PlayerLevelHighscoreModel(
          levelId: CanvasDataModelId.fromJson('1'),
          landingsCount: 1,
          maxDistance: 200,
          totalDistance: 200,
        ),
      });
    });
    test('countPlayerLevelHighscore - when level is not finished', () {
      final updatedPlayer = scoreMechanics.countPlayerLevelHighscore(
        player: player,
        isLevelPassed: false,
        levelId: CanvasDataModelId.fromJson('1'),
        maxDistance: 200,
      );
      expect(
        updatedPlayer.levelsHighscores.isNotEmpty,
        isTrue,
      );
      expect(updatedPlayer.levelsHighscores, {
        '1': PlayerLevelHighscoreModel(
          levelId: CanvasDataModelId.fromJson('1'),
          maxDistance: 200,
          totalDistance: 200,
        ),
      });
    });
  });
}
