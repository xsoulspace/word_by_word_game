import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'yandex_ads_sdk_method_channel.dart';

abstract class YandexAdsSdkPlatform extends PlatformInterface {
  /// Constructs a YandexAdsSdkPlatform.
  YandexAdsSdkPlatform() : super(token: _token);

  static final Object _token = Object();

  static YandexAdsSdkPlatform _instance = MethodChannelYandexAdsSdk();

  /// The default instance of [YandexAdsSdkPlatform] to use.
  ///
  /// Defaults to [MethodChannelYandexAdsSdk].
  static YandexAdsSdkPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [YandexAdsSdkPlatform] when
  /// they register themselves.
  static set instance(final YandexAdsSdkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
