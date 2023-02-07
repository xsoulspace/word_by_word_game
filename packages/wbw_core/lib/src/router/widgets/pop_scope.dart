part of '../router.dart';

@immutable
class RouterPopper {
  const RouterPopper();
  Future<bool> handleWillPop() async => true;
  bool onPopPage(
    final Route<dynamic> route,
    final dynamic result,
  ) =>
      route.didPop(result);
}

class RouterPopScope extends StatelessWidget {
  const RouterPopScope({
    required this.child,
    this.popper = const RouterPopper(),
    super.key,
  });
  final RouterPopper popper;
  final Widget child;
  @override
  Widget build(final BuildContext context) {
    return WillPopScope(
      onWillPop: popper.handleWillPop,
      child: child,
    );
  }
}
