import 'dart:io';

import 'package:flutter/material.dart';
import 'package:yandex_ads_sdk/yandex_ads_sdk.dart';

class AdsSample extends StatelessWidget {
  const AdsSample({super.key});

  @override
  Widget build(final BuildContext context) {
    if (Platform.isAndroid) {
      return YandexBannerPlatformView(
        height: 50,
        width: MediaQuery.of(context).size.width,
      );
    }
    return const SizedBox();
  }
}
