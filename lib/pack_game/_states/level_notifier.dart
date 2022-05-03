part of pack_game;

abstract class LevelNotifier extends ChangeNotifier implements Loadable {
  LevelNotifier({
    required this.runtimeGameNotifier,
    required this.writtenWordsNotifier,
  });
  final RuntimeGameNotifier runtimeGameNotifier;
  final WrittenWordsNotifier writtenWordsNotifier;

  @override
  Future<void> onLoad({required final BuildContext context}) async {}

  /// ********************************************
  /// *      INHERITED FUNCTIONS START
  /// ********************************************
  ///
  late final _copyGame = game.copyWith.call;
  late final updateGame = runtimeGameNotifier.updateGame;

  /// ********************************************
  /// *      INHERITED FUNCTINOS END
  /// ********************************************

  GameModel get game => runtimeGameNotifier.game;

  /// Order is important, because the order of players
  /// means order of turns.
  final players = <GamePlayerModel>[];

  /// Call super first
  @mustCallSuper
  void addPlayer({required final PlayerProfileModel player}) {
    players.add(player.toNewGameProfile());
    notifyListeners();
  }
}
