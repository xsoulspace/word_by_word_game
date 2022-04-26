part of pack_game;

class WordByWordGame extends StatelessWidget {
  const WordByWordGame({
    required this.db,
    final Key? key,
  }) : super(key: key);
  final LocalDbI<DbStore> db;
  @override
  Widget build(final BuildContext context) {
    return AppStateProvider(
      db: db,
      builder: (final _) => const GlobalScaffold(),
    );
  }
}
