import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'gen/yandex_ads_api.g.dart';
import 'yandex_ads_api_pigeon_impl.dart';

class YandexAdsApiPlatform extends PlatformInterface implements YandexAdsApi {
  /// Constructs a YandexAdsSdkPlatform.
  YandexAdsApiPlatform() : super(token: _token);

  static final Object _token = Object();

  static YandexAdsApiPlatform _instance = YandexAdsApiPigeonImpl();

  /// The default instance of [YandexAdsApiPlatform] to use.
  ///
  /// Defaults to [MethodChannelYandexAdsSdk].
  static YandexAdsApiPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [YandexAdsApiPlatform] when
  /// they register themselves.
  static set instance(final YandexAdsApiPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  @override
  Future<void> onLoad() => _instance.onLoad();
}
