import 'dart:developer';

import 'package:flutter/services.dart';

import 'gen/yandex_ad_event_handler.g.dart';

abstract class BannerAdEventListener {
  void onAdLoaded();
  void onAdFailedToLoad();
  void onImpression();
  void onAdClicked();
  void onLeftApplication();
  void onReturnedToApplication();
}

class BannerAdEventLogListener implements BannerAdEventListener {
  @override
  void onAdLoaded() {
    log('yandex_ad: onAdLoaded');
  }

  @override
  void onAdFailedToLoad() {
    log('yandex_ad: onAdFailedToLoad');
  }

  @override
  void onImpression() {
    log('yandex_ad: onImpression');
  }

  @override
  void onAdClicked() {
    log('yandex_ad: onAdClicked');
  }

  @override
  void onLeftApplication() {
    log('yandex_ad: onLeftApplication');
  }

  @override
  void onReturnedToApplication() {
    log('yandex:FF: onReturnedToApplication');
  }
}

class YandexAdEventNotifier {
  YandexAdEventNotifier();
  final _channelName = 'dev.flutter.pigeon_attachment.YandexAdEventHandler';
  // ignore: unused_field
  late final _methodChannel = MethodChannel(_channelName)
    ..setMethodCallHandler(_methodCallHandler);
  final _listeners = <BannerAdEventListener>{BannerAdEventLogListener()};

  Future<void> _methodCallHandler(final MethodCall call) async {
    log('yandex_ad call ${call.method}');
    if (call.method == 'notifyListeners') {
      final notifyCall = YandexAdEventNotifyCall.decode(call.arguments);
      _notifyListeners(notifyCall);
    }
  }

  void _notifyListeners(final YandexAdEventNotifyCall notifyCall) {
    for (final listener in _listeners) {
      switch (notifyCall.type) {
        case YandexAdEventNotifyType.onAdLoaded:
          listener.onAdLoaded();
        case YandexAdEventNotifyType.onAdFailedToLoad:
          listener.onAdFailedToLoad();
        case YandexAdEventNotifyType.onImpression:
          listener.onImpression();
        case YandexAdEventNotifyType.onAdClicked:
          listener.onAdClicked();
        case YandexAdEventNotifyType.onLeftApplication:
          listener.onLeftApplication();
        case YandexAdEventNotifyType.onReturnedToApplication:
          listener.onReturnedToApplication();
      }
    }
  }

  void addListener(final BannerAdEventListener listener) {
    _listeners.add(listener);
  }

  void removeListener(final BannerAdEventListener listener) {
    _listeners.remove(listener);
  }
}
