part of pack_game;

abstract class LevelNotifier extends GameNotifier
    implements ContextfullLoadable {
  LevelNotifier({
    required final RuntimeGameNotifier runtimeGameNotifier,
    required this.writtenWordsNotifier,
  }) : super(runtimeGameNotifier: runtimeGameNotifier);
  final WrittenWordsNotifier writtenWordsNotifier;

  @override
  Future<void> onLoad({required final BuildContext context}) async {}

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
