part of pack_game;

class GameLocalApiService {
  GameLocalApiService({
    required this.localDb,
  });
  final LocalDbI localDb;

  Future<GameModel?> loadLastGame() async {
    final gamesSnaps = await localDb.find(
      storeName: DbStore.games,
      finder: null,
    );
    if (gamesSnaps.isEmpty) return null;

    for (final snapshot in gamesSnaps) {
      final json = snapshot.value;
      final game = GameModel.fromJson(json);
      return game;
    }

    return null;
  }

  Future<void> saveGame({required final GameModel game}) async {
    final json = game.toJson();
    await localDb.put(storeName: DbStore.games, json: json);
  }
}
