import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:word_by_word_game/_abstract/abstract.dart';
import 'package:word_by_word_game/pack_game/pack_game.dart';
import 'package:word_by_word_game/pack_settings/pack_settings.dart';

void main() {
  group('GameService', () {
    final profile = PlayerProfileModel(
      id: '1',
      colorValue: Colors.white.value,
      name: '',
      playedGames: const {},
    );
    final profileNotifier = ProfileNotifier(
      profileService: ProfileService(),
    )..profile = profile;
    final GameServiceI gameService = GameService(
      profileNotifier: profileNotifier,
    );
    test('can create a game', () async {
      final GameModel newGame = await gameService.createGame();

      expect(newGame.id.isNotEmpty, isTrue);
    });
    test('can create a game with book shelf levels', () async {
      final GameModel newGame = await gameService.createGame();

      expect(newGame.bookShelfLevels.isNotEmpty, isTrue);
      final gameBookShelfLevels =
          newGame.bookShelfLevels.map((final v) => v.id == newGame.id);
      expect(
        gameBookShelfLevels.length,
        equals(newGame.bookShelfLevels.length),
      );
    });

    test('can create, save and load a game', () async {
      final GameModel newGame = await gameService.createGame();
      await gameService.saveGame(game: newGame);
      final gameSave = await gameService.loadGame();

      expect(gameSave, equals(newGame));
    });
  });
}
