part of pack_game;

abstract class LevelNotifier extends ChangeNotifier implements Loadable {
  LevelNotifier({
    required this.runtimeGameNotifier,
  });
  final RuntimeGameNotifier runtimeGameNotifier;

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

  final players = {};

  /// Call super first
  @mustCallSuper
  void addPlayer({required final PlayerProfileModel profile}) {
    players[profile.id] = profile;
    notifyListeners();
  }
}
