/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsDictionariesGen {
  const $AssetsDictionariesGen();

  /// File path: assets/dictionaries/wrong_words.json
  String get wrongWords =>
      'packages/wbw_core/assets/dictionaries/wrong_words.json';

  /// List of all assets
  List<String> get values => [wrongWords];
}

class $AssetsLevelsGen {
  const $AssetsLevelsGen();

  /// File path: assets/levels/lvl_colourful.json
  String get lvlColourful =>
      'packages/wbw_core/assets/levels/lvl_colourful.json';

  /// File path: assets/levels/lvl_evening.json
  String get lvlEvening => 'packages/wbw_core/assets/levels/lvl_evening.json';

  /// File path: assets/levels/lvl_white_black.json
  String get lvlWhiteBlack =>
      'packages/wbw_core/assets/levels/lvl_white_black.json';

  /// List of all assets
  List<String> get values => [lvlColourful, lvlEvening, lvlWhiteBlack];
}

class Assets {
  Assets._();

  static const $AssetsDictionariesGen dictionaries = $AssetsDictionariesGen();
  static const $AssetsLevelsGen levels = $AssetsLevelsGen();
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
    String? package = 'wbw_core',
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
    String? package = 'wbw_core',
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/wbw_core/$_assetName';
}
