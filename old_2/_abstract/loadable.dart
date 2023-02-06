part of abstract;

abstract class ContextlessLoadable {
  ContextlessLoadable();

  /// Use this function to load something on
  /// instance initialization
  Future<void> onLoad();
}

abstract class ContextfullLoadable {
  ContextfullLoadable();

  /// Use this function to load something on
  /// instance initialization
  Future<void> onLoad({required final BuildContext context});
}
