import 'package:flutter/material.dart';

import 'ya_flex_banner_mobile.dart'
    if (dart.library.html) 'ya_flex_banner_web.dart';

class YandexFullscreen extends StatelessWidget {
  const YandexFullscreen({
    required this.adUnitId,
    required this.height,
    required this.width,
    super.key,
  });

  final String adUnitId;
  final double height;
  final double width;
  @override
  Widget build(final BuildContext context) => YandexFlexiblePlatformBanner(
        adUnitId: adUnitId,
        height: height,
        width: width,
      );
}
