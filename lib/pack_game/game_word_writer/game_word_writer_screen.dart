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
            ValueListenableBuilder<String>(
              valueListenable: state.fullWordNotifier,
              builder: (final context, final fullword, final child) {
                return Text('This word will add ${fullword.length} letters.');
              },
            ),
            const SizedBox(height: PaddingSizes.large),
            ValueListenableBuilder<String>(
              valueListenable: state.fullWordNotifier,
              builder: (final context, final fullword, final child) {
                return OutlinedButton(
                  onPressed: fullword.isEmpty ? null : state.onAddWord,
                  child: Text(S.of(context).addNewWord.pascalCase),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
