part of pack_game;

class WordByWordGame extends StatelessWidget {
  const WordByWordGame({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return AppStateProvider(
      builder: (final _) => const GameScaffold(),
    );
  }
}
