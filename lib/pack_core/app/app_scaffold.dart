import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/generated/l10n.dart';
import 'package:word_by_word_game/pack_core/app/app_services_provider.dart';
import 'package:word_by_word_game/pack_core/global_states/global_state_initializer.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/pack_core.dart';

part 'app_scaffold_state.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({required this.servicesDiDto, final Key? key})
      : super(key: key);
  final AppServicesProviderDiDto servicesDiDto;
  @override
  Widget build(final BuildContext context) {
    return AppServicesProvider(
      diDto: servicesDiDto,
      child: Builder(
        builder: (final context) {
          return StateLoader(
            initializer: GlobalSettingsInitializer(),
            loader: const LoadingScreen(),
            child: RouterScaffold(
              builder: (final context, final parser) => AppScaffoldBuilder(
                routeParser: parser,
              ),
            ),
          );
        },
      ),
    );
  }
}

class RouterScaffold extends HookWidget {
  const RouterScaffold({
    required this.builder,
    final Key? key,
  }) : super(key: key);
  final Widget Function(BuildContext context, TemplateRouteParser parser)
      builder;
  @override
  Widget build(final BuildContext context) {
    final state = useAppScaffoldState();

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<RouteState>(
          create: (final context) => state.routeState,
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
  const AppScaffoldBuilder({required this.routeParser, final Key? key})
      : super(key: key);
  final TemplateRouteParser routeParser;
  @override
  Widget build(final BuildContext context) {
    final state = useAppScaffoldBodyState(context.read);
    final settingsNotifier = context.watch<AppSettingsNotifier>();
    return AnimatedBuilder(
      animation: settingsNotifier,
      builder: (final context, final child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: AppThemeData.brandLight,
          darkTheme: AppThemeData.brandDark,
          themeMode: ThemeMode.light,
          routeInformationParser: routeParser,
          routerDelegate: state.routerDelegate,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          localeListResolutionCallback:
              (final locales, final supportedLocales) {
            final defaultLocale = () {
              if (locales == null || locales.isEmpty) return null;
              for (final locale in locales) {
                if (S.delegate.isSupported(locale)) {
                  return locale;
                }
              }
            }();

            /// in case if we will needed preferrable system locale
            settingsNotifier.systemLocale = defaultLocale;

            /// if language is set by user, then use it
            if (settingsNotifier.locale != null) return settingsNotifier.locale;

            return defaultLocale;
          },
          supportedLocales: Locales.values,
          builder: (final context, final child) {
            return UiTheme(
              scheme: UiThemeScheme.m3(context),
              child: StateLoader(
                initializer: GlobalStateInitializer(),
                loader: const LoadingScreen(),
                child: child!,
              ),
            );
          },
        );
      },
    );
  }
}
