import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_yandex_ads_sdk/flutter_yandex_ads_sdk.dart';
import 'package:flutter_yandex_ads_sdk/flutter_yandex_ads_sdk_platform_interface.dart';
import 'package:flutter_yandex_ads_sdk/flutter_yandex_ads_sdk_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterYandexAdsSdkPlatform
    with MockPlatformInterfaceMixin
    implements FlutterYandexAdsSdkPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterYandexAdsSdkPlatform initialPlatform = FlutterYandexAdsSdkPlatform.instance;

  test('$MethodChannelFlutterYandexAdsSdk is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterYandexAdsSdk>());
  });

  test('getPlatformVersion', () async {
    FlutterYandexAdsSdk flutterYandexAdsSdkPlugin = FlutterYandexAdsSdk();
    MockFlutterYandexAdsSdkPlatform fakePlatform = MockFlutterYandexAdsSdkPlatform();
    FlutterYandexAdsSdkPlatform.instance = fakePlatform;

    expect(await flutterYandexAdsSdkPlugin.getPlatformVersion(), '42');
  });
}
