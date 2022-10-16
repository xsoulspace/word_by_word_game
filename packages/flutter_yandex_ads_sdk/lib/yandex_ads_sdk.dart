import 'yandex_ads_sdk_platform_interface.dart';

class YandexAdsSdk {
  Future<String?> getPlatformVersion() {
    return YandexAdsSdkPlatform.instance.getPlatformVersion();
  }
}
