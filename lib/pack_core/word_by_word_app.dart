import 'package:flutter/cupertino.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/pack_core/global_states/global_services_initializer.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states_provider.dart';
import 'package:word_by_word_game/router.dart';

class WordByWordApp extends StatelessWidget {
  const WordByWordApp({required this.initializer, super.key});
  final GlobalServicesInitializer initializer;
  @override
  Widget build(final BuildContext context) => GlobalStatesProvider(
    initializer: initializer,
    builder: (final context) => const AppScaffoldBuilder(),
  );
}

class AppScaffoldBuilder extends StatelessWidget {
  const AppScaffoldBuilder({super.key});
  @override
  Widget build(final BuildContext context) {
    final locale = context.select<AppSettingsNotifier, Locale>(
      (final c) => c.locale.value,
    );
    // final settingsNotifier = context.watch<AppSettingsNotifier>();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      shortcuts: {
        ...WidgetsApp.defaultShortcuts,
        const SingleActivator(LogicalKeyboardKey.keyX): const DismissIntent(),
      },

      /// Providing a restorationScopeId allows the Navigator built by
      /// the MaterialApp to restore the navigation stack when a user
      /// leaves and returns to the app after it has been killed while
      /// running in the background.
      restorationScopeId: 'app',
      theme: AppThemeData.brandLight,
      themeMode: ThemeMode.light,
      routerConfig: router,
      localizationsDelegates: S.localizationsDelegates,
      locale: locale,
      supportedLocales: Locales.values,
    );
  }
}

/// Used to create toolbar instead of native, but resizing
/// doesn't work on ubuntu.
class WindowControlsScaffold extends HookWidget {
  const WindowControlsScaffold({required this.child, super.key});
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
                          const Icon(CupertinoIcons.circle_filled),
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
