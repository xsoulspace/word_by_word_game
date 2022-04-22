import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:word_by_word_game/_abstract/abstract.dart';
import 'package:word_by_word_game/pack_game/pack_game.dart';
import 'package:word_by_word_game/pack_settings/pack_settings.dart';

void main() {
  group('GameService', () {
    const screenWidth = 600.0;
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
    test('can create a game with book shelves & slots & books', () async {
      final GameModel newGame = await gameService.createGame(
        screenWidth: screenWidth,
      );

      final shelvesLevels = newGame.bookShelfLevels;
      expect(newGame.id.isNotEmpty, isTrue);
      expect(shelvesLevels.isNotEmpty, isTrue);

      final shelves = shelvesLevels.first.shelves;
      expect(shelves.isNotEmpty, isTrue);
      expect(
        shelves.first.slots.isNotEmpty,
        isTrue,
      );
      expect(shelves.isNotEmpty, isTrue);
      expect(
        shelves.first.slots.isNotEmpty,
        isTrue,
      );

      final books = shelvesLevels.first.shelves.fold<List<BookModel>>(
        [],
        (final books, final shelf) => [
          ...books,
          ...shelf.getAllBooks(),
        ],
      );

      expect(
        books.isNotEmpty,
        isTrue,
      );
    });
    test('can create a game with book shelf levels', () async {
      final GameModel newGame = await gameService.createGame(
        screenWidth: screenWidth,
      );

      expect(newGame.bookShelfLevels.isNotEmpty, isTrue);
      final gameBookShelfLevels =
          newGame.bookShelfLevels.map((final v) => v.id == newGame.id);
      expect(
        gameBookShelfLevels.length,
        equals(newGame.bookShelfLevels.length),
      );
    });

    test('can create, save and load a game', () async {
      final GameModel newGame = await gameService.createGame(
        screenWidth: screenWidth,
      );
      await gameService.saveGame(game: newGame);
      final gameSave = await gameService.loadGame();

      expect(gameSave, equals(newGame));
    });
  });
}
