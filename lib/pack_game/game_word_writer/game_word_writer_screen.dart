part of pack_game;

class GameWordWriterScreen extends HookWidget {
  const GameWordWriterScreen({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    final state = useGameWordWriterScreenState();
    final navigatorController = GlobalNavigatorController.use(
      routeState: context.read(),
      context: context,
      screenLayout: ScreenLayout.of(context),
    );
    return Scaffold(
      appBar: const UpperGameBar(),
      body: Column(
        children: [
          Row(
            children: [
              TextField(
                controller: state.firstPartController,
              ),
              const Text('- rld -'),
              TextField(
                controller: state.secondPartController,
              ),
            ],
          ),
          Text('will add ${state.lettersCounter}'),
          OutlinedButton(
            onPressed: navigatorController.goBookShelf,
            child: const Text('Choose books'),
          ),
        ],
      ),
    );
  }
}
