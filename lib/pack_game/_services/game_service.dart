part of pack_game;

class GameService implements GameServiceI {
  GameService({
    required this.profileNotifier,
  });
  @override
  final ProfileNotifierI profileNotifier;
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
      players: {},
      hostPlayerId: profile.id,
    );
  }

  @override
  Future<GameModel?> loadGame() async {
    // TODO: implement loadGame
    throw UnimplementedError();
  }

  @override
  Future<void> saveGame({
    required final GameModel game,
  }) {
    // TODO: implement saveGame
    throw UnimplementedError();
  }
}
