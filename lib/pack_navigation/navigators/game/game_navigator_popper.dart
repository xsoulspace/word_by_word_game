part of pack_navigation;

class GameNavigatorPopper extends NavigatorDataProvider
    implements AbstractNavigatorPopper {
  GameNavigatorPopper({
    required final BuildContext context,
    required final RouteState routeState,
  }) : super(
          context: context,
          routeState: routeState,
        );

  @override
  Future<bool> handleWillPop() async {
    if (pathTemplate.contains('pause')) {
      navigatorController.goHome();
    }
    return false;
  }

  @override
  bool onPopPage(
    final Route<dynamic> route,
    final dynamic result,
  ) {
    /// ! here will go selected pages logic.
    // final maybePage = route.settings;
    // if (maybePage is Page) {
    //   if (maybePage.name == AppRoutesName.home) {
    //     navigatorController.goHome();
    //   } else if (maybePage.key == NavigatorValueKeys._ideasIdea) {
    //     navigatorController.goHome();
    //   } else if (maybePage.key == NavigatorValueKeys._ideasIdeaAnswer) {
    //     final arr = maybePage.name?.split('/') ?? [];
    //     if (arr.length == 4) {
    //       navigatorController.goIdeaScreen(ideaId: arr[4]);
    //     } else {
    //       navigatorController.goHome();
    //     }
    //   } else if (maybePage.name?.contains(AppRoutesName.settings) == true) {
    //     if (maybePage.name == AppRoutesName.settings ||
    //         navigatorController.screenLayout.notSmall) {
    //       navigatorController.goHome();
    //     } else {
    //       navigatorController.goSettings();
    //     }
    //   }
    // }

    final popped = route.didPop(result);

    return popped;
  }
}
