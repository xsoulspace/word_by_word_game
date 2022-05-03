part of pack_game;

class RuntimeGameNotifier extends ChangeNotifier
    implements ContextfullLoadable {
  RuntimeGameNotifier({
    required this.gameService,
    required this.profileNotifier,
  });
  final GameServiceI gameService;
  final ProfileNotifierI profileNotifier;
  final GameGenerator gameGenerator = GameGenerator.init();
  GameModel game = GameModel.empty;

  @override
  Future<void> onLoad({required final BuildContext context}) async {
    final gameSave = await gameService.loadGame();
    if (gameSave != null) {
      game = gameSave;
    } else {
      final profile = profileNotifier.profile;
      final hostPlayerId = profile.id;
      game = gameGenerator.createGame(
        levelKinds: [GameLevelKind.bookShelf],
        players: [profile.toNewGameProfile()],
        hostPlayerId: hostPlayerId,
        screenWidth: ScreenLayout.maxSmallWidth,
      );
    }
    notifyListeners();
  }

  Future<void> updateGame({
    required final GameModel game,
    final bool notifyListeners = false,
  }) async {
    this.game = game;
    await gameService.saveGame(game: game);
    if (notifyListeners) notify();
  }
}
