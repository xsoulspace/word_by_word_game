import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/pack_core/global_states/global_services_initializer.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states_initializer.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states_provider.dart';
import 'package:word_by_word_game/pack_core/pack_core.dart';

part 'word_by_word_app_state.dart';

class WordByWordApp extends StatelessWidget {
  const WordByWordApp({required this.initializer, super.key});
  final GlobalServicesInitializer initializer;
  @override
  Widget build(final BuildContext context) => GlobalStatesProvider(
        initializer: initializer,
        builder: (final context) => RouterScaffold(
          builder: (final context, final parser) => StateLoader(
            initializer: GlobalStatesInitializer(
              appRouterController: AppRouterController.use(context.read),
            ),
            loader: const LoadingScreen(),
            child: MultiProvider(
              providers: [
                Provider(create: UiThemeScheme.m3),
                Provider(
                  create: (final context) => context.read<UiThemeScheme>().text,
                ),
              ],
              builder: (final context, final child) => AppScaffoldBuilder(
                routeParser: parser,
              ),
            ),
          ),
        ),
      );
}

class RouterScaffold extends HookWidget {
  const RouterScaffold({
    required this.builder,
    super.key,
  });
  final Widget Function(BuildContext context, TemplateRouteParser parser)
      builder;
  @override
  Widget build(final BuildContext context) {
    final state = useAppScaffoldState();

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<RouteState>.value(
          value: state.routeState,
        ),
        Provider<AppRouterController>(
          create: (final context) => AppRouterController.use(context.read),
        ),
      ],
      builder: (final context, final child) =>
          builder(context, state.routeParser),
    );
  }
}

class AppScaffoldBuilder extends HookWidget {
  const AppScaffoldBuilder({
    required this.routeParser,
    super.key,
  });
  final TemplateRouteParser routeParser;
  @override
  Widget build(final BuildContext context) {
    final locale = context.select<AppSettingsNotifier, Locale>(
      (final c) => c.locale.value,
    );
    final state = useAppScaffoldBodyState(context.read);
    // final settingsNotifier = context.watch<AppSettingsNotifier>();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,

      /// Providing a restorationScopeId allows the Navigator built by
      /// the MaterialApp to restore the navigation stack when a user
      /// leaves and returns to the app after it has been killed while
      /// running in the background.
      restorationScopeId: 'app',
      theme: AppThemeData.brandLight,
      themeMode: ThemeMode.light,
      routeInformationParser: routeParser,
      routerDelegate: state.routerDelegate,
      localizationsDelegates: S.localizationsDelegates,
      locale: locale,
      supportedLocales: Locales.values,
    );
  }
}

/// Used to create toolbar instead of native, but resizing
/// doesn't work on ubuntu.
class WindowControlsScaffold extends HookWidget {
  const WindowControlsScaffold({
    required this.child,
    super.key,
  });
  final Widget child;
  @override
  Widget build(final BuildContext context) {
    if (DeviceRuntimeType.isWeb ||
        DeviceRuntimeType.isMobile ||
        DeviceRuntimeType.isCupertino) {
      return child;
    }

    final isHoveredNotifier = useIsBool();
    const dimension = 13.5;
    return Stack(
      children: [
        child,
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          child: FocusableActionDetector(
            onShowHoverHighlight: (final value) {
              isHoveredNotifier.value = value;
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 7, right: 7, bottom: 7),
              child: ValueListenableBuilder(
                valueListenable: isHoveredNotifier,
                builder: (final context, final isHovered, final child) => Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: isHovered
                          ? const Icon(CupertinoIcons.clear_circled_solid)
                          : const Icon(CupertinoIcons.circle_filled),
                      constraints: const BoxConstraints(
                        maxWidth: dimension,
                        maxHeight: dimension,
                      ),
                      color: Colors.red,
                      iconSize: dimension,
                    ),
                    const SizedBox(width: 7),
                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () async {
                        // final bool isMinimized =
                        //     await windowManager.isMinimized();
                        // if (isMinimized) {
                        //   await windowManager.restore();
                        // } else {
                        //   await windowManager.minimize();
                        // }
                      },
                      color: Colors.amber,
                      icon: isHovered
                          ? const Icon(CupertinoIcons.circle_filled)
                          : const Icon(CupertinoIcons.circle_filled),
                      constraints: const BoxConstraints(
                        maxWidth: dimension,
                        maxHeight: dimension,
                      ),
                      iconSize: dimension,
                    ),
                    const SizedBox(width: 7),
                    IconButton(
                      padding: EdgeInsets.zero,
                      color: Colors.green,
                      constraints: const BoxConstraints(
                        maxWidth: dimension,
                        maxHeight: dimension,
                      ),
                      onPressed: () async {
                        // final isFullScreen = await windowManager.
                        // isFullScreen();
                        // await windowManager.setFullScreen(!isFullScreen);
                        // if (await windowManager.isMaximized()) {
                        //   await windowManager.unmaximize();
                        // } else {
                        //   await windowManager.maximize();
                        // }
                      },
                      icon: Stack(
                        children: [
                          const Icon(
                            CupertinoIcons.circle_filled,
                          ),
                          if (isHovered)
                            const Center(
                              child: Icon(
                                CupertinoIcons.arrow_up_left_arrow_down_right,
                                color: Colors.white,
                                size: 9,
                              ),
                            ),
                        ],
                      ),
                      iconSize: dimension,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
