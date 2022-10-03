part of pack_game;

class GameBookShelfScreen extends HookWidget {
  const GameBookShelfScreen({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    final state = useGameBookShelfScreenState();

    return Scaffold(
      appBar: const UpperGameBar(),
      body: Column(),
    );
  }
}
