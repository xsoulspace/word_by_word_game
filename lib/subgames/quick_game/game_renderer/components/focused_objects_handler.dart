import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/subgames/quick_game/game_renderer/game_renderer.dart';

class GuiFocusedObjectsHandler extends Component
    with HasGameRef<CanvasRendererGame>, HasCanvasRendererRef, TapCallbacks {
  @override
  bool containsLocalPoint(final Vector2 point) => true;

  @override
  void onTapUp(final TapUpEvent event) {
    event.continuePropagation = true;
    super.onTapUp(event);

    /// 1. Get the position of the tap
    /// 2. Get the list of objects that are under the tap
    /// 3. Check if the object is focused
    /// 4. If the object is not focused, set this object as focused
    /// 5. If the object is focused, then do nothing

    final screenVector2 = GameVector2.fromScreenVector2(
      screenVector2: event.canvasPosition,
      origins: origins,
    );
    final mapTileCell = screenVector2.toMapTileCell();
    final mapCellPoint = mapTileCell.toCellPoint();

    /// check for other objects
    final focusableTiles = canvasCubit.getFocusableTiles(
      hitboxMapCells: [mapCellPoint],
    );
    final focusableObjectsIds = focusableTiles.firstOrNull?.$1.objects ?? [];
    final player = this.player;
    void chooseObject() {
      /// get next object somehow
      /// currently there is no way to place two objects on the same tile
      final firstObjectId = focusableObjectsIds.first;
      gameDto.levelPlayersBloc.changeFocusedObjectId(firstObjectId);
    }

    void choosePlayer() {
      final player = this.player;
      if (player == null) return;
      gameDto.levelPlayersBloc.focusToPlayer();
    }

    final rect = player?.hitboxMapRect;
    final isPlayerOnTile =
        player != null &&
        rect?.contains(screenVector2.mapVector2.toOffset()) == true;
    if (isPlayerOnTile) {
      if (focusableObjectsIds.isNotEmpty) {
        chooseObject();
      } else {
        choosePlayer();
      }
    } else if (focusableObjectsIds.isNotEmpty) {
      chooseObject();
    }
  }
}
