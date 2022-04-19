import 'package:flutter_test/flutter_test.dart';
import 'package:word_by_word_game/_abstract/abstract.dart';
import 'package:word_by_word_game/pack_game/pack_game.dart';

void main() {
  group('GameService', () {
    final gameService = GameService();
    final emptyGame = GameModel.empty;
    test('can create a game', () {});

    test('can save a game', () async {
      await gameService.saveGame();

      expect(actual, equals(emptyGame));
    });
    test('can load a game', () {});
  });
}
