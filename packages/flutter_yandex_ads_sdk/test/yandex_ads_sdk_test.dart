import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:yandex_ads_sdk/yandex_ads_sdk.dart';
import 'package:yandex_ads_sdk/yandex_ads_sdk_method_channel.dart';
import 'package:yandex_ads_sdk/yandex_ads_sdk_platform_interface.dart';

class MockYandexAdsSdkPlatform
    with MockPlatformInterfaceMixin
    implements YandexAdsSdkPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final YandexAdsSdkPlatform initialPlatform = YandexAdsSdkPlatform.instance;

  test('$MethodChannelYandexAdsSdk is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelYandexAdsSdk>());
  });

  test('getPlatformVersion', () async {
    final YandexAdsSdk YandexAdsSdkPlugin = YandexAdsSdk();
    final MockYandexAdsSdkPlatform fakePlatform = MockYandexAdsSdkPlatform();
    YandexAdsSdkPlatform.instance = fakePlatform;

    expect(await YandexAdsSdkPlugin.getPlatformVersion(), '42');
  });
}
