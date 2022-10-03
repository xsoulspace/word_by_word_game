part of pack_preloaders;

class GameLoader extends StatelessWidget {
  const GameLoader({
    required this.builder,
    final Key? key,
  }) : super(key: key);
  final WidgetBuilder builder;
  @override
  Widget build(final BuildContext context) {
    return StateLoader(
      initializer: GameStateInitializer(),
      loader: const GameLoadingScreen(),
      child: builder(context),
    );
  }
}
