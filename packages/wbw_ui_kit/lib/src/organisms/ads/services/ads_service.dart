import 'package:xsoulspace_foundation/xsoulspace_foundation.dart';

export 'ya_ads_mock_service.dart'
    if (dart.library.html) 'ya_ads_web_service.dart'
    if (dart.library.io) 'ya_ads_io_service.dart';

abstract class AdsService implements Loadable {
  @override
  Future<void> onLoad() async {}
  void showFullscreenAds() {}
}
