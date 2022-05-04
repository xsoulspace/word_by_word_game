part of pack_game;

class UpperGameBar extends StatelessWidget implements PreferredSizeWidget {
  const UpperGameBar({final Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size(double.infinity, 180);

  @override
  Widget build(final BuildContext context) {
    final navigatorController = GlobalNavigatorController.use(
      context: context,
      routeState: RouteStateScope.of(context),
      screenLayout: ScreenLayout.of(context),
    );
    final runtimeGameNotifier = context.read<RuntimeGameNotifier>();
    final writtenWordsNotifier = context.read<WrittenWordsNotifier>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const TopSafeArea(),
        Row(
          children: [
            IconButton(
              onPressed: navigatorController.goPauseMenu,
              icon: const Icon(Icons.pause),
            ),
            const Spacer(),
            ValueListenableBuilder<GamePlayerModel>(
              valueListenable: runtimeGameNotifier.currentPlayer,
              builder: (final context, final player, final child) =>
                  Text('Player ${player.id}'),
            ),
            const Spacer(),
            TextButton(
              onPressed: navigatorController.goHighScore,
              child: ValueListenableBuilder<String>(
                valueListenable: writtenWordsNotifier.highscoreNotifier,
                builder: (final context, final highscore, final child) =>
                    Text(highscore),
              ),
            )
          ],
        ),
      ],
    );
  }
}
