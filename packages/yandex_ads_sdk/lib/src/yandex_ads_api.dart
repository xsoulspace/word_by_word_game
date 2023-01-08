import 'dart:async';
import 'dart:developer';

import 'banner_ad_event_listener.dart';
import 'gen/yandex_ads_api.g.dart';
import 'yandex_ads_api_platform_interface.dart';

class YandexAdsSdk implements YandexAdsApi {
  YandexAdsApiPlatform get _instance => YandexAdsApiPlatform.instance;
  late final YandexAdEventNotifier notifier;
  @override
  Future<void> onLoad() async {
    log('notifier onLoad');
    unawaited(_instance.onLoad());
    notifier = YandexAdEventNotifier();
    log('notifier $notifier');
  }
}
