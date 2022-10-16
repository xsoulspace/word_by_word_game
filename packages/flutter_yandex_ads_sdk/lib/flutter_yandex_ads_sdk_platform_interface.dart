import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_yandex_ads_sdk_method_channel.dart';

abstract class FlutterYandexAdsSdkPlatform extends PlatformInterface {
  /// Constructs a FlutterYandexAdsSdkPlatform.
  FlutterYandexAdsSdkPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterYandexAdsSdkPlatform _instance =
      MethodChannelFlutterYandexAdsSdk();

  /// The default instance of [FlutterYandexAdsSdkPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterYandexAdsSdk].
  static FlutterYandexAdsSdkPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterYandexAdsSdkPlatform] when
  /// they register themselves.
  static set instance(final FlutterYandexAdsSdkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
