part of pack_game;

abstract class GameNotifier extends ChangeNotifier {
  GameNotifier({
    required this.runtimeGameNotifier,
  });
  final RuntimeGameNotifier runtimeGameNotifier;

  /// ********************************************
  /// *      INHERITED FUNCTIONS START
  /// ********************************************
  ///
  late final _copyGame = game.copyWith.call;
  late final silentlyUpdateGame = runtimeGameNotifier.updateGame;

  /// ********************************************
  /// *      INHERITED FUNCTINOS END
  /// ********************************************

  GameModel get game => runtimeGameNotifier.game;
}
