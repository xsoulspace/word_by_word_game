/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesCursorsGen get cursors => const $AssetsImagesCursorsGen();
  $AssetsImagesPreviewGen get preview => const $AssetsImagesPreviewGen();
  $AssetsImagesTilesetsGen get tilesets => const $AssetsImagesTilesetsGen();
}

class $AssetsImagesCursorsGen {
  const $AssetsImagesCursorsGen();

  $AssetsImagesCursorsCursorGen get cursor =>
      const $AssetsImagesCursorsCursorGen();
  $AssetsImagesCursorsHandleGen get handle =>
      const $AssetsImagesCursorsHandleGen();
}

class $AssetsImagesPreviewGen {
  const $AssetsImagesPreviewGen();

  $AssetsImagesPreviewColourfulGen get colourful =>
      const $AssetsImagesPreviewColourfulGen();
}

class $AssetsImagesTilesetsGen {
  const $AssetsImagesTilesetsGen();

  /// File path: assets/images/tilesets/README.md
  String get readme => 'assets/images/tilesets/README.md';

  $AssetsImagesTilesetsColourfulGen get colourful =>
      const $AssetsImagesTilesetsColourfulGen();

  /// File path: assets/images/tilesets/colourful.fa
  String get colourfulFa => 'assets/images/tilesets/colourful.fa';

  /// File path: assets/images/tilesets/colourful.json
  String get colourfulJson => 'assets/images/tilesets/colourful.json';

  /// File path: assets/images/tilesets/colourful_credits.md
  String get colourfulCredits => 'assets/images/tilesets/colourful_credits.md';

  /// File path: assets/images/tilesets/colourful_preset_data.json
  String get colourfulPresetData =>
      'assets/images/tilesets/colourful_preset_data.json';

  /// List of all assets
  List<String> get values => [
        readme,
        colourfulFa,
        colourfulJson,
        colourfulCredits,
        colourfulPresetData
      ];
}

class $AssetsImagesCursorsCursorGen {
  const $AssetsImagesCursorsCursorGen();

  /// File path: assets/images/cursors/cursor/idle.png
  AssetGenImage get idle =>
      const AssetGenImage('assets/images/cursors/cursor/idle.png');

  /// List of all assets
  List<AssetGenImage> get values => [idle];
}

class $AssetsImagesCursorsHandleGen {
  const $AssetsImagesCursorsHandleGen();

  /// File path: assets/images/cursors/handle/idle.png
  AssetGenImage get idle =>
      const AssetGenImage('assets/images/cursors/handle/idle.png');

  /// List of all assets
  List<AssetGenImage> get values => [idle];
}

class $AssetsImagesPreviewColourfulGen {
  const $AssetsImagesPreviewColourfulGen();

  /// File path: assets/images/preview/colourful/marker_green.png
  AssetGenImage get markerGreen =>
      const AssetGenImage('assets/images/preview/colourful/marker_green.png');

  /// File path: assets/images/preview/colourful/marker_red.png
  AssetGenImage get markerRed =>
      const AssetGenImage('assets/images/preview/colourful/marker_red.png');

  /// File path: assets/images/preview/colourful/tropical_land.png
  AssetGenImage get tropicalLand =>
      const AssetGenImage('assets/images/preview/colourful/tropical_land.png');

  /// File path: assets/images/preview/colourful/tropical_water.png
  AssetGenImage get tropicalWater =>
      const AssetGenImage('assets/images/preview/colourful/tropical_water.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [markerGreen, markerRed, tropicalLand, tropicalWater];
}

class $AssetsImagesTilesetsColourfulGen {
  const $AssetsImagesTilesetsColourfulGen();

  /// File path: assets/images/tilesets/colourful/hot_air_balloon__idle_right_0.png
  AssetGenImage get hotAirBalloonIdleRight0 => const AssetGenImage(
      'assets/images/tilesets/colourful/hot_air_balloon__idle_right_0.png');

  /// List of all assets
  List<AssetGenImage> get values => [hotAirBalloonIdleRight0];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
