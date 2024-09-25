import 'package:flutter/material.dart';

import 'ui_asset_helper.dart';

/// An icon widget that supports multiple types of icons.
///
/// This widget can display icons from the Flutter material library, asset icons,
/// or custom painted icons. It provides flexibility in how icons are rendered.
///
/// Example usage:
/// ```dart
/// UiIcon.lib(icon: Icons.star);
/// ```
///
/// @ai When using this widget, consider the type of icon you need and
/// choose the appropriate constructor for optimal performance.
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

  /// Returns the asset path for the icon.
  String get path => 'icons/icon_action_$name';
}

/// A widget that displays an icon from various sources.
///
/// This widget can render icons from the Flutter library, asset icons, or
/// custom painted icons, providing flexibility in icon usage.
class UiIcon extends StatelessWidget {
  /// Creates a custom painted icon.
  ///
  /// The [painter] parameter is required to define the custom painting logic.
  const UiIcon.customPainted({
    required this.painter,
    this.height = defaultSize,
    this.width = defaultSize,
    super.key,
  })  : libIcon = null,
        assetIcon = null;

  /// Creates an icon from the Flutter material library.
  ///
  /// The [icon] parameter is required to specify the icon to display.
  const UiIcon.lib({
    required final IconData icon,
    this.height = defaultSize,
    this.width = defaultSize,
    super.key,
  })  : libIcon = icon,
        assetIcon = null,
        painter = null;

  /// Creates an icon from an asset.
  ///
  /// The [icon] parameter is required to specify the asset icon to display.
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
