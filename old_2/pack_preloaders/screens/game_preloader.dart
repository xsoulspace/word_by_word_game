part of pack_preloaders;

class AppStateProvider extends StatelessWidget {
  const AppStateProvider({
    required final this.builder,
    required final this.db,
    final Key? key,
  }) : super(key: key);
  final WidgetBuilder builder;
  final LocalDbI<DbStore> db;
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
        Provider<LocalDbI<DbStore>>(
          create: (final context) => db,
        ),
        Provider<GameLocalApiService>(
          create: (final context) => GameLocalApiService(
            localDb: context.read<LocalDbI<DbStore>>(),
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
            profileNotifier: context.read(),
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
