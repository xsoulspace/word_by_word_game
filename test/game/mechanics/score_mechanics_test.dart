import 'package:flutter_test/flutter_test.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_game/mechanics/score_mechanics.dart';

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
            maxLettersCount: fullwordLength + 1,
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
            maxWordsCount: player.highscore.maxWordsCount,
            score: const ScoreModel(value: 3),
          ),
        ),
      );
    });
    test('checkPlayerAbilityToDecrease - has no ability', () {
      final isAbleToDecrease = scoreMechanics.checkPlayerAbilityToDecrease(
        player: player,
      );

      expect(
        isAbleToDecrease,
        isFalse,
      );
    });
    test('checkPlayerAbilityToDecrease - has ability', () {
      final isAbleToDecrease = scoreMechanics.checkPlayerAbilityToDecrease(
        player: player.copyWith(
          highscore: player.highscore.copyWith(
            score: ScoreModel(
              value: kLetterDecreaseCost.toDouble(),
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
        isLevelFinished: true,
        levelId: '1',
        maxDistance: 200,
      );
      expect(
        updatedPlayer.levelsHighscores.isNotEmpty,
        isTrue,
      );
      expect(updatedPlayer.levelsHighscores, {
        '1': const PlayerLevelHighscoreModel(
          levelId: '1',
          landingsCount: 1,
          maxDistance: 200,
        ),
      });
    });
    test('countPlayerLevelHighscore - when level is not finished', () {
      final updatedPlayer = scoreMechanics.countPlayerLevelHighscore(
        player: player,
        isLevelFinished: false,
        levelId: '1',
        maxDistance: 200,
      );
      expect(
        updatedPlayer.levelsHighscores.isNotEmpty,
        isTrue,
      );
      expect(updatedPlayer.levelsHighscores, {
        '1': const PlayerLevelHighscoreModel(
          levelId: '1',
          landingsCount: 0,
          maxDistance: 200,
        ),
      });
    });
  });
}
