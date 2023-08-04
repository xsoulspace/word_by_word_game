import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../wbw_design_core.dart';

enum UiFrameAsset {
  // ignore: constant_identifier_names
  text_field,
  actions,
  center;

  const UiFrameAsset();
  String get path => UiAssetHelper.useImagePath('ui_frames/${name}_frame');
}

class UiFrame extends HookWidget {
  const UiFrame({
    required this.asset,
    required this.height,
    required this.width,
    super.key,
  });
  final UiFrameAsset asset;
  final double width;
  final double height;
  @override
  Widget build(final BuildContext context) => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              asset.path,
            ),
            fit: BoxFit.fitWidth,
          ),
        ),
      );
}
