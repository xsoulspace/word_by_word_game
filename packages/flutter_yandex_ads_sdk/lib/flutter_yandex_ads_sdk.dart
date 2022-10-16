
import 'flutter_yandex_ads_sdk_platform_interface.dart';

class FlutterYandexAdsSdk {
  Future<String?> getPlatformVersion() {
    return FlutterYandexAdsSdkPlatform.instance.getPlatformVersion();
  }
}
