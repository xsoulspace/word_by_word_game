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
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: PaddingSizes.medium),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            WordCompositionRow(
              wordWriterState: state,
            ),
            const SizedBox(height: PaddingSizes.large),
            Text('will add ${state.lettersCount}'),
            const SizedBox(height: PaddingSizes.large),
            OutlinedButton(
              onPressed: state.onAddWord,
              child: const Text('Choose books'),
            ),
          ],
        ),
      ),
    );
  }
}
