part of subgames/quick_game;

class GameService implements GameServiceI {
  GameService({
    required this.profileNotifier,
    required this.gameLocalApiService,
  });
  @override
  final ProfileNotifierI profileNotifier;
  @override
  final GameLocalApiService gameLocalApiService;

  final _gameGenerator = GameGenerator.init();

  @override
  Future<GameModel> createGame({
    required final double screenWidth,
  }) async {
    final profile = profileNotifier.profile;
    return _gameGenerator.createGame(
      screenWidth: screenWidth,
      levelKinds: [
        GameLevelKind.bookShelf,
      ],
      players: [profile.toNewGameProfile()],
      hostPlayerId: profile.id,
    );
  }

  @override
  Future<GameModel?> loadGame() async {
    return gameLocalApiService.loadLastGame();
  }

  @override
  Future<void> saveGame({
    required final GameModel game,
  }) async {
    await gameLocalApiService.saveGame(game: game);
  }
}
