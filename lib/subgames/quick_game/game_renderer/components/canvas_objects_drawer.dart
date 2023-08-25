import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flame/components.dart';
import 'package:flame/extensions.dart';
import 'package:flame_bloc/flame_bloc.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:map_editor/ui/renderer/editor_renderer.dart';
import 'package:map_editor/ui/renderer/renderer.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/game_renderer/components/game_canvas_object.dart';
import 'package:word_by_word_game/subgames/quick_game/game_renderer/components/player_canvas_object.dart';
import 'package:word_by_word_game/subgames/quick_game/game_renderer/game_renderer.dart';

class GameCanvasObjectsDrawer extends Component
    with
        HasGameRef<CanvasRendererGame>,
        HasCanvasRendererRef,
        HasCanvasResourcesLoaderRef {
  Future<void> _addCanvasObjects(
    final Iterable<GameCanvasObject?> objects,
  ) async {
    await addAll(objects.whereNotNull());
  }

  List<GameCanvasObject> get canvasObjects =>
      [_skyHandle, player].whereNotNull().toList();

  void onOriginUpdate() {
    for (final canvasObject in canvasObjects) {
      canvasObject.onOriginUpdate();
    }
  }

  PlayerGameCanvasObject? player;
  GameCanvasObject? _skyHandle;

  @override
  FutureOr<void> onLoad() async {
    _loadPlayer();
    await _addCanvasObjects(canvasObjects);
    add(
      FlameBlocListener<StatesStatusesCubit, StatesStatusesCubitState>(
        onNewState: _handleGameStatusChanged,
      ),
    );

    return super.onLoad();
  }

  Future<void> _handleGameStatusChanged(
    final StatesStatusesCubitState statusState,
  ) async {
    final oldPlayer = player;
    switch (statusState.levelStateStatus) {
      case LevelStateStatus.loading:
        if (oldPlayer != null) {
          player = null;
          if (oldPlayer.isMounted) {
            remove(oldPlayer);
          }
        }

      case LevelStateStatus.paused || LevelStateStatus.playing:
        if (oldPlayer == null) {
          final newPlayer = _loadPlayer();
          add(newPlayer);
        }
    }
  }

  PlayerGameCanvasObject _loadPlayer() {
    final newPlayer = PlayerGameCanvasObject.fromCanvasCubit(
      canvasCubit: canvasCubit,
      game: game,
      levelPlayersBloc: game.diDto.levelPlayersBloc,
    );
    player = newPlayer;
    return newPlayer;
  }

  void _loadSkyHandle() {
    // _skyHandle = GameCanvasObject(
    //   gid: kCursorHandleObjectId.toGid(),
    //   tileId: kCursorHandleObjectId,
    //   position: (game.size / 2).toOffset(),
    //   onPositionChanged: (final position) {
    //     drawerCubit.changeState(
    //       drawerCubit.state.copyWith(
    //         skyYPosition: position.dy,
    //       ),
    //     );
    //   },
    // );
  }

  void _loadGravitationHandle() {
    // _gravitationHandle = GameCanvasObject(
    //   gid: kCursorHandleObjectId.toGid(),
    //   tileId: kCursorHandleObjectId,
    //   position: (game.size / 2).toOffset(),
    //   onPositionChanged: (final position) {
    //     drawerCubit.changeState(
    //       drawerCubit.state.copyWith(
    //         gravityYPosition: position.dy,
    //       ),
    //     );
    //   },
    // );
  }

  @override
  void render(final Canvas canvas) {
    if (debugMode) _renderGravitationLine(canvas);
    // TODO(arenukvern): restore
    // _renderSkyHorizon(canvas);
    super.render(canvas);
  }

  GravityModel get gravity => GravityModel.initial;
  final _gravitationLinePaint = Palette.red.paint()..strokeWidth = 2;
  void _renderGravitationLine(final Canvas canvas) {
    final dy = gravity.tileDistance.toDouble() + origin.y;
    canvas.drawLine(
      Offset(0, dy),
      Offset(canvasRenderer.windowWidth, dy),
      _gravitationLinePaint,
    );
  }

  final _skyHorizonPaint = Palette.blue.paint()..strokeWidth = 2;
  void _renderSkyHorizon(final Canvas canvas) {
    final dy = (_skyHandle?.position.dy ?? 0) + 20;

    canvas.drawLine(
      Offset(0, dy),
      Offset(canvasRenderer.windowWidth, dy),
      _skyHorizonPaint,
    );
  }
}
