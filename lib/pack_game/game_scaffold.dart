part of pack_game;

class GameScaffold extends StatefulHookWidget {
  const GameScaffold({final Key? key}) : super(key: key);

  @override
  _GameScaffoldState createState() => _GameScaffoldState();
}

class _GameScaffoldState extends State<GameScaffold> {
  late final RouteState routeState;
  late final SimpleRouterDelegate routerDelegate;
  late final TemplateRouteParser routeParser;
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    /// Configure the parser with all of the app's allowed path templates.
    routeParser = TemplateRouteParser(
      allowedPaths: GameRouteNames.values,
      guards: [],
    );

    routeState = RouteState(routeParser);

    routerDelegate = SimpleRouterDelegate(
      routeState: routeState,
      navigatorKey: navigatorKey,
      builder: (final context) => GameNavigator(
        navigatorKey: navigatorKey,
        routeState: routeState,
      ),
    );

    super.initState();
  }

  @override
  Widget build(final BuildContext context) {
    final settings = context.read<GeneralSettingsNotifier>();

    return RouteStateScope(
      notifier: routeState,
      child: AnimatedBuilder(
        animation: settings,
        builder: (final context, final child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,

            /// Providing a restorationScopeId allows the Navigator built by
            /// the MaterialApp to restore the navigation stack when a user
            /// leaves and returns to the app after it has been killed while
            /// running in the background.
            restorationScopeId: 'game',

            // Provide the generated AppLocalizations to the MaterialApp. This
            // allows descendant Widgets to display the correct translations
            // depending on the user's locale.
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            localeListResolutionCallback:
                (final locales, final supportedLocales) {
              final locale = settings.locale;
              if (locale == null) return null;
              if (S.delegate.isSupported(locale)) return locale;

              return null;
            },
            supportedLocales: Locales.values,

            // Use AppLocalizations to configure the correct application title
            // depending on the user's locale.
            //
            // The appTitle is defined in .arb files found in the localization
            // directory.
            onGenerateTitle: (final context) => 'Word by Word',

            // Define a light and dark color theme. Then, read the user's
            // preferred ThemeMode (light, dark, or system default) from the
            // SettingsController to display the correct theme.
            theme: settings.lightTheme,
            darkTheme: settings.darkTheme,
            themeMode: settings.themeMode,

            routerDelegate: routerDelegate,
            routeInformationParser: routeParser,
          );
        },
      ),
    );
  }
}
