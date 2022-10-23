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

class YandexAdEventNotifier {
  final _channelName = 'dev.flutter.pigeon.YandexAdEventHandler';
  // ignore: unused_field
  late final _methodChannel = MethodChannel(_channelName)
    ..setMethodCallHandler(_methodCallHandler);
  final _listeners = <BannerAdEventListener>{};

  Future<void> _methodCallHandler(final MethodCall call) async {
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
          break;
        case YandexAdEventNotifyType.onAdFailedToLoad:
          listener.onAdFailedToLoad();
          break;
        case YandexAdEventNotifyType.onImpression:
          listener.onImpression();
          break;
        case YandexAdEventNotifyType.onAdClicked:
          listener.onAdClicked();
          break;
        case YandexAdEventNotifyType.onLeftApplication:
          listener.onLeftApplication();
          break;
        case YandexAdEventNotifyType.onReturnedToApplication:
          listener.onReturnedToApplication();
          break;
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
