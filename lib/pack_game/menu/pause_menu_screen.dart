part of pack_game;

class PauseMenuScreen extends HookWidget {
  const PauseMenuScreen({
    final Key? key,
  }) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    final state = usePauseMenuScreenState();
    final navigatorController = GlobalNavigatorController.use(
      context: context,
      routeState: RouteStateScope.of(context),
      screenLayout: ScreenLayout.of(context),
    );

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: PauseAppBar(
        onMenuTap: navigatorController.goMenu,
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(),
            const Text(
              'press to continue',
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            TextButton(
              onPressed: () {
                //
                // navigatorController.go
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 24,
                ),
                child: Text('or start another game'),
              ),
            ),
            const BottomSafeArea(),
          ],
        ),
      ),
    );
  }
}

class PauseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PauseAppBar({
    required this.onMenuTap,
    final Key? key,
  }) : super(key: key);
  final VoidCallback onMenuTap;
  @override
  Size get preferredSize => const Size(double.infinity, 150.0);

  @override
  Widget build(final BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: onMenuTap,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(Icons.settings),
              Text('Menu'),
            ],
          ),
        ),
      ],
    );
  }
}
