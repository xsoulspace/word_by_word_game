// ignore_for_file: one_member_abstracts

import 'package:pigeon/pigeon.dart';

enum YandexAdEventNotifyType {
  onAdLoaded,
  onAdFailedToLoad,
  onImpression,
  onAdClicked,
  onLeftApplication,
  onReturnedToApplication,
}

class YandexAdEventNotifyCall {
  YandexAdEventNotifyCall({
    required this.type,
  });
  final YandexAdEventNotifyType type;
}

/// Event Handler for java only implmentation and strong type conversion
@HostApi()
abstract class YandexAdEventHandler {
  void notifyListeners(final YandexAdEventNotifyCall notifyCall);
}
