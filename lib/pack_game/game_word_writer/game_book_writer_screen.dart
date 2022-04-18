part of pack_game;

class GameBookWriterScreen extends HookWidget {
  const GameBookWriterScreen({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    final state = useGameBookWriterScreenState();
    final navigatorController = context.read<GameNavigatorController>();
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
