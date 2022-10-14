import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';

import '../../../wbw_design_core.dart';
import '../../utils/utils.dart';

_UiFrameState _useUiFrameState() => use(
      LifeHook(
        debugLabel: 'State',
        state: _UiFrameState(),
      ),
    );

class _UiFrameState extends LifeState {
  _UiFrameState();
}

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
  Widget build(final BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            asset.path,
          ),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
