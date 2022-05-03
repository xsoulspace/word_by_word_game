import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:word_by_word_game/_abstract/abstract.dart';
import 'package:word_by_word_game/pack_game/pack_game.dart';

void main() {
  group('GameLevelGenerator', () {
    test('can create book shelf level', () {
      final player = PlayerProfileModel.create(
        name: '',
        colorValue: Colors.white.value,
      );
      final gamePlayer = player.toNewGameProfile();
      final levelGenerator = GameLevelGenerator();
      final shelfLevels = levelGenerator.createBookShelfLevels(
        players: [gamePlayer],
        screenWidth: 600,
      );

      expect(shelfLevels.isNotEmpty, isTrue);

      final shelfLevel = shelfLevels.first;
      expect(shelfLevel.players.isNotEmpty, isTrue);
      expect(
        shelfLevel.players
            .firstWhereOrNull((final player) => player == gamePlayer),
        isNotNull,
      );

      expect(shelfLevel.shelves.isNotEmpty, isTrue);
    });
  });
}
