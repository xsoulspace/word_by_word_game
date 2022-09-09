part of utils;

extension ChangeNotifierExtension on ChangeNotifier {
  @protected
  // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
  void notify() => notifyListeners();
}
