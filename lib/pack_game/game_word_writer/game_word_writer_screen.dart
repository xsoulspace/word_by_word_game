part of pack_game;

class GameWordWriterScreen extends HookWidget {
  const GameWordWriterScreen({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    final state = useGameWordWriterScreenState();
    final navigatorController = GlobalNavigatorController.use(
      routeState: RouteStateScope.of(context),
      context: context,
      screenLayout: ScreenLayout.of(context),
    );

    return Scaffold(
      appBar: const UpperGameBar(),
      body: Column(
        children: [
          const WordCompositionRow(),
          Text('will add ${state.lettersCount}'),
          const SizedBox(height: 24),
          OutlinedButton(
            onPressed: navigatorController.goBookShelf,
            child: const Text('Choose books'),
          ),
        ],
      ),
    );
  }
}
