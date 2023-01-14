import 'package:flutter/material.dart';

import 'ya_flex_banner_mobile.dart'
    if (dart.library.html) 'ya_flex_banner_web.dart';

class YandexFlexibleBanner extends StatelessWidget {
  const YandexFlexibleBanner({
    required this.adUnitId,
    required this.height,
    required this.width,
    super.key,
  });

  final String adUnitId;
  final double height;
  final double width;
  @override
  Widget build(final BuildContext context) {
    return YandexFlexiblePlatformBanner(
      adUnitId: adUnitId,
      height: height,
      width: width,
    );
  }
}
