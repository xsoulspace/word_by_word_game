import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class YandexFlexiblePlatformBanner extends StatelessWidget {
  const YandexFlexiblePlatformBanner({
    this.adUnitId = 'R-M-DEMO-320x50',
    this.height = 100,
    this.width = 320,
    super.key,
  });
  final String adUnitId;
  final double height;
  final double width;
  @override
  Widget build(final BuildContext context) {
    // This is used in the platform side to register the view.
    const String viewType = 'yandex-ads-banner-view';
    // Pass parameters to the platform side.
    final Map<String, dynamic> creationParams = <String, dynamic>{
      'adUnitId': adUnitId,
      'width': width.toInt(),
      'height': height.toInt(),
    };

    return SizedBox(
      height: height,
      width: width,
      child: AndroidView(
        viewType: viewType,
        layoutDirection: TextDirection.ltr,
        creationParams: creationParams,
        creationParamsCodec: const StandardMessageCodec(),
      ),
    );
  }
}
