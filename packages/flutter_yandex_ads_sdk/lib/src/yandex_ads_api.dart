import 'gen/yandex_ads_api.g.dart';
import 'yandex_ads_api_platform_interface.dart';

class YandexAdsSdk implements YandexAdsApi {
  YandexAdsApiPlatform get _instance => YandexAdsApiPlatform.instance;

  @override
  Future<void> onLoad() => _instance.onLoad();
}
