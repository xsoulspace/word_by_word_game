part of pack_preloaders;

class AppStateProvider extends StatelessWidget {
  const AppStateProvider({
    required final this.builder,
    final Key? key,
  }) : super(key: key);
  final WidgetBuilder builder;
  GeneralSettingsNotifier get _settings => GlobalStateNotifiers.settings;
  @override
  Widget build(final BuildContext context) {
    final child = MultiProvider(
      providers: [
        /// Keep _settings is global is important as it will not lose all
        /// changes during global rebuild
        ChangeNotifierProvider(create: (final context) => _settings),
        Provider<ProfileServiceI>(
          create: (final context) => ProfileService(),
        ),
        ChangeNotifierProvider<ProfileNotifierI>(
          create: (final context) => ProfileNotifier(
            profileService: context.read(),
          ),
        ),
        FutureProvider<LocalDbI<DbStore>?>(
          initialData: null,
          create: (final context) async => SembastDb.init(),
        ),
        Provider<GameLocalApiService>(
          create: (final context) => GameLocalApiService(
            localDb: context.read(),
          ),
        ),
        Provider<GameServiceI>(
          create: (final context) => GameService(
            profileNotifier: context.read(),
            gameLocalApiService: context.read(),
          ),
        ),
        ChangeNotifierProvider<RuntimeGameNotifier>(
          create: (final context) => RuntimeGameNotifier(
            gameService: context.read(),
          ),
        ),
      ],
      child: Builder(
        builder: (final context) {
          return StateLoader(
            initializer: GlobalStateInitializer(
              settings: _settings,
              runtimeGameNotifier: context.read(),
            ),
            loader: const GameLoadingScreen(),
            child: builder(context),
          );
        },
      ),
    );
    if (isNativeDesktop) {
      return child;
    }

    return Directionality(
      // TODO(arenukvern): replace with default device textDirection
      textDirection: TextDirection.ltr,
      child: Stack(
        children: [
          Container(color: AppColors.black),
          child,
        ],
      ),
    );
  }
}
