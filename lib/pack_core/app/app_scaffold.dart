import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/pack_core/app/app_di.dart';
import 'package:word_by_word_game/pack_core/global_states/global_state_initializer.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/pack_core.dart';

part 'app_scaffold_state.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({required this.servicesDto, super.key});
  final AppDiProviderDto servicesDto;
  @override
  Widget build(final BuildContext context) => AppDiProvider(
        diDto: servicesDto,
        child: Builder(
          builder: (final context) => StateLoader(
            initializer: GlobalSettingsInitializer(),
            loader: const LoadingScreen(),
            child: RouterScaffold(
              builder: (final context, final parser) => AppScaffoldBuilder(
                routeParser: parser,
                servicesDto: servicesDto,
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
    required this.servicesDto,
    super.key,
  });
  final TemplateRouteParser routeParser;
  final AppDiProviderDto servicesDto;
  @override
  Widget build(final BuildContext context) {
    final state = useAppScaffoldBodyState(context.read);
    final settingsNotifier = context.watch<AppSettingsCubit>();

    return Provider(
      create: UiTextTheme.new,
      builder: (final context, final child) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: AppThemeData.brandLight,
        themeMode: ThemeMode.light,
        routeInformationParser: routeParser,
        routerDelegate: state.routerDelegate,
        localizationsDelegates: const [
          ...S.localizationsDelegates,
        ],
        locale: settingsNotifier.locale,
        localeListResolutionCallback: (final locales, final supportedLocales) {
          final defaultLocale = () {
            if (locales == null || locales.isEmpty) return null;
            for (final locale in locales) {
              if (S.delegate.isSupported(locale)) {
                return locale;
              }
            }
          }();

          // /// in case if we will needed preferrable system locale
          // settingsNotifier.systemLocale = Locale.fromSubtags(
          //   languageCode: defaultLocale?.languageCode ?? 'en',
          // );
          void setIntlLocale(final Locale? newLocale) {
            final intlDefaultLocale = Intl.defaultLocale;
            Intl.defaultLocale = newLocale?.languageCode ?? intlDefaultLocale;
          }

          /// if language is set by user, then use it
          if (settingsNotifier.locale != null) {
            setIntlLocale(settingsNotifier.locale);
            return settingsNotifier.locale;
          }
          setIntlLocale(defaultLocale);
          return defaultLocale;
        },
        supportedLocales: Locales.values,
        builder: (final context, final child) => UiTheme(
          scheme: UiThemeScheme.m3(context),
          child: StateLoader(
            initializer: GlobalStateInitializer(
              servicesDto: servicesDto,
            ),
            loader: const LoadingScreen(),
            child: child ?? const SizedBox(),
          ),
        ),
      ),
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
    if (kIsWeb || DeviceRuntimeType.isMobile || DeviceRuntimeType.isApple) {
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
