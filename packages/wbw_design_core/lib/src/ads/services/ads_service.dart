import 'package:life_hooks/life_hooks.dart';

abstract class AdsService implements Loadable {
  @override
  Future<void> onLoad() async {}
  void showFullscreenAds() {}
}
