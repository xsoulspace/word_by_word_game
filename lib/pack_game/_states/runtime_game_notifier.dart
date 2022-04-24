part of pack_game;

class RuntimeGameNotifier extends ChangeNotifier implements Loadable {
  RuntimeGameNotifier({
    required this.gameService,
  });
  final GameServiceI gameService;

  GameModel game = GameModel.empty;

  @override
  Future<void> onLoad({required final BuildContext context}) async {
    final gameSave = await gameService.loadGame();
    if (gameSave != null) {
      game = gameSave;
    }
    notifyListeners();
  }
}
