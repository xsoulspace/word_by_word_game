import 'package:flutter/material.dart';

import 'ui_asset_helper.dart';

enum UiAssetsIcons {
  // ignore: constant_identifier_names
  minus,
  // ignore: constant_identifier_names
  fire,
  // ignore: constant_identifier_names
  collect,
  // ignore: constant_identifier_names
  dictionary_add,
  // ignore: constant_identifier_names
  pause,
  // ignore: constant_identifier_names
  idea;

  const UiAssetsIcons();

  String get path => 'icons/icon_action_$name';
}

class UiIcon extends StatelessWidget {
  const UiIcon.customPainted({
    required this.painter,
    this.height = defaultSize,
    this.width = defaultSize,
    super.key,
  })  : libIcon = null,
        assetIcon = null;
  const UiIcon.lib({
    required final IconData icon,
    this.height = defaultSize,
    this.width = defaultSize,
    super.key,
  })  : libIcon = icon,
        assetIcon = null,
        painter = null;
  const UiIcon.asset({
    required final UiAssetsIcons icon,
    this.height = defaultSize,
    this.width = defaultSize,
    super.key,
  })  : libIcon = null,
        assetIcon = icon,
        painter = null;
  static const double defaultSize = 24;
  final UiAssetsIcons? assetIcon;
  final IconData? libIcon;
  final CustomPainter? painter;
  final double width;
  final double height;

  @override
  Widget build(final BuildContext context) {
    final assetIcon = this.assetIcon;
    final libIcon = this.libIcon;
    if (assetIcon != null) {
      return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              UiAssetHelper.useImagePath(assetIcon.path),
            ),
            fit: BoxFit.contain,
          ),
        ),
      );
    }
    if (libIcon != null) {
      return Icon(libIcon, size: width);
    }
    if (painter != null) {
      return CustomPaint(
        painter: painter,
        child: SizedBox(width: width, height: height),
      );
    }
    return const SizedBox();
  }
}
