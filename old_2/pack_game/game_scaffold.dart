part of pack_game;

class GameScaffold extends HookWidget {
  const GameScaffold({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    /// it is possible that it can break the game, in case of it
    /// this state should be rewritten to stateful or lifestate
    final navigatorKey = useState(GlobalKey<NavigatorState>());

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (final context) => WrittenWordsNotifier(
            runtimeGameNotifier: context.read(),
          ),
        ),
        ChangeNotifierProvider(
          create: (final context) => BookShelfLevelNotifier(
            runtimeGameNotifier: context.read(),
            writtenWordsNotifier: context.read(),
          ),
        ),
      ],
      child: Builder(
        builder: (final context) {
          return GameLoader(
            builder: (final context) => GameNavigator(
              navigatorKey: navigatorKey.value,
              routeState: RouteStateScope.of(context),
            ),
          );
        },
      ),
    );
  }
}