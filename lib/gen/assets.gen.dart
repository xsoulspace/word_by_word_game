/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesTilesetsGen get tilesets => const $AssetsImagesTilesetsGen();
}

class $AssetsTilesGen {
  const $AssetsTilesGen();

  /// File path: assets/tiles/pixel_black_white_landscape.tmx
  String get pixelBlackWhiteLandscape =>
      'assets/tiles/pixel_black_white_landscape.tmx';

  /// List of all assets
  List<String> get values => [pixelBlackWhiteLandscape];
}

class $AssetsImagesTilesetsGen {
  const $AssetsImagesTilesetsGen();

  /// File path: assets/images/tilesets/pixel_black_white_tileset.png
  AssetGenImage get pixelBlackWhiteTileset => const AssetGenImage(
      'assets/images/tilesets/pixel_black_white_tileset.png');

  /// List of all assets
  List<AssetGenImage> get values => [pixelBlackWhiteTileset];
}

class Assets {
  Assets._();

  static const AssetGenImage icon = AssetGenImage('assets/icon.png');
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsTilesGen tiles = $AssetsTilesGen();
  static const AssetGenImage wordByWord1 =
      AssetGenImage('assets/word_by_word_1.png');
  static const AssetGenImage wordByWord2 =
      AssetGenImage('assets/word_by_word_2.png');

  /// List of all assets
  List<AssetGenImage> get values => [icon, wordByWord1, wordByWord2];
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

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
