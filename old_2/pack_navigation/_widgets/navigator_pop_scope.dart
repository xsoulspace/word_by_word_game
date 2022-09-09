part of pack_navigation;

class NavigatorPopScope extends StatelessWidget {
  const NavigatorPopScope({
    required final this.popper,
    required final this.child,
    final Key? key,
  }) : super(key: key);
  final AbstractNavigatorPopper popper;
  final Widget child;

  @override
  Widget build(final BuildContext context) {
    return WillPopScope(
      onWillPop: popper.handleWillPop,
      child: child,
    );
  }
}
