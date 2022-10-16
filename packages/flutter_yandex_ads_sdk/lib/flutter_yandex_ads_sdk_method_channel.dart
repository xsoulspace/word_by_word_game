import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_yandex_ads_sdk_platform_interface.dart';

/// An implementation of [FlutterYandexAdsSdkPlatform] that uses method channels.
class MethodChannelFlutterYandexAdsSdk extends FlutterYandexAdsSdkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_yandex_ads_sdk');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
