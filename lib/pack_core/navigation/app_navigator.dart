import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/navigation/app_router.dart';
import 'package:word_by_word_game/pack_game/pack_game.dart';

class AppNavigator extends HookWidget {
  const AppNavigator({
    required this.navigatorKey,
    final Key? key,
  }) : super(key: key);
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
  final mainMenu = const ValueKey('mainMenu');
  final game = const ValueKey('game');
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

  Page mainMenu() => NavigatorPage(
        child: const MainMenuScreen(),
        key: keys.mainMenu,
      );

  Page game() => NavigatorPage(
        child: const WbwGameWidget(),
        key: keys.game,
      );
}

class AppLayoutBuilder
    extends RouterLayoutBuilder<AppRouterController, AppPageBuilder> {
  AppLayoutBuilder({required super.pageBuilder});
  @override
  List<Page> buildPages() {
    final pages = <Page>[
      AppPageBuilder.emptyPage,
    ];
    if (pathTemplate == NavigationRoutes.mainMenu || pathTemplate == '/') {
      pages.add(pageBuilder.mainMenu());
    } else if (pathTemplate.startsWith(NavigationRoutes.game)) {
      pages.add(pageBuilder.game());
    }
    return pages;
  }
}
