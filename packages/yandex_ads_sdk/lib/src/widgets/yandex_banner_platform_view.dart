import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class YandexBannerPlatformView extends StatelessWidget {
  const YandexBannerPlatformView({super.key});

  @override
  Widget build(final BuildContext context) {
    // This is used in the platform side to register the view.
    const String viewType = 'yandex-ads-banner-view';
    // Pass parameters to the platform side.
    const Map<String, dynamic> creationParams = <String, dynamic>{};

    return const AndroidView(
      viewType: viewType,
      layoutDirection: TextDirection.ltr,
      creationParams: creationParams,
      creationParamsCodec: StandardMessageCodec(),
    );
  }
}
