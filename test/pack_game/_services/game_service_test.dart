import 'package:flutter_test/flutter_test.dart';
import 'package:word_by_word_game/_abstract/abstract.dart';
import 'package:word_by_word_game/pack_game/pack_game.dart';

void main() {
  group('GameService', () {
    final GameServiceI gameService = GameService();
    test('can create a game', () async {
      final GameModel newGame = await gameService.createGame();

      expect(newGame.bookShelfLevels.length, equals(1));
      expect(newGame.id.isNotEmpty, isTrue);
    });

    test('can create, save and load a game', () async {
      final GameModel newGame = await gameService.createGame();
      await gameService.saveGame(game: newGame);
      final gameSave = await gameService.loadGame();

      expect(gameSave, equals(newGame));
    });
  });
}
