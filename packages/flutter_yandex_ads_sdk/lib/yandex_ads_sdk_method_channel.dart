import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'yandex_ads_sdk_platform_interface.dart';

/// An implementation of [YandexAdsSdkPlatform] that uses method channels.
class MethodChannelYandexAdsSdk extends YandexAdsSdkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('yandex_ads_sdk');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
