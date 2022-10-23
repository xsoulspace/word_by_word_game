import 'gen/yandex_ads_api.g.dart';
import 'yandex_ads_api_platform_interface.dart';

class YandexAdsApiPigeonImpl extends YandexAdsApiPlatform
    implements YandexAdsApi {
  final _api = YandexAdsApi();

  @override
  Future<void> onLoad() => _api.onLoad();
}
