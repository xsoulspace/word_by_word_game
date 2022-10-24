import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class YandexBannerPlatformView extends StatelessWidget {
  const YandexBannerPlatformView({super.key});

  @override
  Widget build(final BuildContext context) {
    // This is used in the platform side to register the view.
    const String viewType = 'yandex-ads-banner-view';
    // Pass parameters to the platform side.
    const Map<String, dynamic> creationParams = <String, dynamic>{
      'adUnitId': 'R-M-DEMO-320x50'
    };

    return const SizedBox(
      height: 100,
      width: 320,
      child: AndroidView(
        viewType: viewType,
        layoutDirection: TextDirection.ltr,
        creationParams: creationParams,
        creationParamsCodec: StandardMessageCodec(),
      ),
    );
  }
}
