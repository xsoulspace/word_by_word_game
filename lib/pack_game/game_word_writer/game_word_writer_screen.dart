part of pack_game;

class GameWordWriterScreen extends HookWidget {
  const GameWordWriterScreen({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    final navigatorController = GlobalNavigatorController.use(
      routeState: RouteStateScope.of(context),
      screenLayout: ScreenLayout.of(context),
      context: context,
    );
    final state = useGameWordWriterScreenState(
      writtenWordsNotifier: context.read(),
      navigatorController: navigatorController,
    );

    return Scaffold(
      appBar: const UpperGameBar(),
      body: Column(
        children: [
          WordCompositionRow(
            wordWriterState: state,
          ),
          Text('will add ${state.lettersCount}'),
          const SizedBox(height: 24),
          OutlinedButton(
            onPressed: state.onAddWord,
            child: const Text('Choose books'),
          ),
        ],
      ),
    );
  }
}
