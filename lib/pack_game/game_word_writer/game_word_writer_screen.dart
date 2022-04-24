part of pack_game;

class GameWordWriterScreen extends HookWidget {
  const GameWordWriterScreen({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    final state = useGameWordWriterScreenState();
    final navigatorController = context.read<GlobalNavigatorController>();
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
