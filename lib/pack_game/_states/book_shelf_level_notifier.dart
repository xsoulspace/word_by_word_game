part of pack_game;

class BookShelfLevelNotifier extends LevelNotifier {
  BookShelfLevelNotifier({
    required final RuntimeGameNotifier runtimeGameNotifier,
  }) : super(runtimeGameNotifier: runtimeGameNotifier);

  @override
  Future<void> addPlayer({required final PlayerProfileModel profile}) async {
    super.addPlayer(profile: profile);
  }

  Future<void> updateGame() async {}
}
