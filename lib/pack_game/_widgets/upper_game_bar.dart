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
    return Row(
      children: [
        IconButton(
          onPressed: navigatorController.goPauseMenu,
          icon: const Icon(Icons.pause),
        ),
        const Spacer(),
        const Text('Player 1'),
        const Spacer(),
        FloatingActionButton.small(
          onPressed: () {},
          child: const Text('45'),
        ),
      ],
    );
  }
}
