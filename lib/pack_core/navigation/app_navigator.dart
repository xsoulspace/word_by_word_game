import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/navigation/app_router.dart';
import 'package:word_by_word_game/pack_game/highscore/highscore_screen.dart';
import 'package:word_by_word_game/pack_game/pack_game.dart';
import 'package:word_by_word_game/pack_game/settings/settings_screen.dart';

class AppNavigator extends HookWidget {
  const AppNavigator({
    required this.navigatorKey,
    super.key,
  });
  final GlobalKey<NavigatorState> navigatorKey;

  @override
  Widget build(final BuildContext context) {
    context.watch<RouteState>();

    final keys = useState(AppPageBuilderKeys());
    final pageBuilder =
        AppPageBuilder.use(keys: keys.value, read: context.read);
    final layoutBuilder = AppLayoutBuilder(pageBuilder: pageBuilder);

    return Navigator(
      key: navigatorKey,
      onPopPage: const RouterPopper().onPopPage,
      pages: layoutBuilder.buildPages(),
    );
  }
}

class AppPageBuilderKeys {
  final pause = const ValueKey('mainMenu');
  final game = const ValueKey('game');
  final highscore = const ValueKey('highscore');
  final settings = const ValueKey('settings');
  final levelOptions = const ValueKey('levelOptions');
}

class AppPageBuilder extends RouterPageBuilder<AppRouterController> {
  AppPageBuilder.use({
    required this.keys,
    required super.read,
  }) : super.use();

  static final emptyPage = NavigatorPage(
    child: const EmptyScreen(),
    key: const ValueKey('empty-screen'),
  );

  final AppPageBuilderKeys keys;

  Page pause() => NavigatorPage(
        child: const PauseScreen(),
        key: keys.pause,
      );

  Page game() => NavigatorPage(
        child: const WbwGameWidget(),
        key: keys.game,
      );

  Page highscore() => NavigatorPage(
        child: const HighscoreScreen(),
        key: keys.highscore,
      );

  Page settings() => NavigatorPage(
        child: const SettingsScreen(),
        key: keys.settings,
      );
}

class AppLayoutBuilder
    extends RouterLayoutBuilder<AppRouterController, AppPageBuilder> {
  AppLayoutBuilder({required super.pageBuilder});
  @override
  List<Page> buildPages() {
    final pages = <Page>[
      pageBuilder.game(),
    ];
    if (pathTemplate.startsWith(NavigationRoutes.levelRoot)) {}

    /// should be at the end of the layout layers
    if (pathTemplate == NavigationRoutes.pause ||
        pathTemplate == NavigationRoutes.root) {
      pages.add(pageBuilder.pause());
    }
    if (pathTemplate == NavigationRoutes.highscore) {
      pages.add(pageBuilder.highscore());
    }
    if (pathTemplate == NavigationRoutes.settings) {
      pages.add(pageBuilder.settings());
    }
    return pages;
  }
}
