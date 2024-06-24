import 'package:map_editor/ui/renderer/renderer.dart';

/// 5 to the right, 5 to the left
const kFocusableTilesRange = 9;

final kFocusableTilesList = List.generate(
  kFocusableTilesRange,
  (final index) {
    final i = (index >= 5 ? (5 - index) : index).toDouble();
    final xTile = i * kTileDimension;
    return (xTile: xTile, i: index);
  },
);

class FocusableObjectsMechanics {}
