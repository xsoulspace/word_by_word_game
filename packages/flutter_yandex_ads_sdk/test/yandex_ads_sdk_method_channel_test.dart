import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yandex_ads_sdk/yandex_ads_sdk_method_channel.dart';

void main() {
  final MethodChannelYandexAdsSdk platform = MethodChannelYandexAdsSdk();
  const MethodChannel channel = MethodChannel('yandex_ads_sdk');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((final methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
