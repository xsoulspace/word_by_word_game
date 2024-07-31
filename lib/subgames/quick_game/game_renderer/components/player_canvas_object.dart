import 'dart:async';
import 'dart:math' as math;

import 'package:flame/extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:map_editor/state/state.dart';
import 'package:map_editor/ui/renderer/editor_renderer.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/game_renderer/components/focus_surface_drawer.dart';
import 'package:word_by_word_game/subgames/quick_game/game_renderer/components/game_canvas_object.dart';
import 'package:word_by_word_game/subgames/quick_game/game_renderer/game_renderer.dart';

class PlayerGameCanvasObject extends GameCanvasObject {
  PlayerGameCanvasObject.fromRenderObject({
    required super.onPositionChanged,
    required this.characterModel,
    required super.data,
  }) : super.fromRenderObject() {
    guiFocusableObjectsNotifier.addListener(_onGuiFocusableObjectsChanged);
  }
  factory PlayerGameCanvasObject.fromCanvasCubit({
    required final CanvasRendererGame game,
    required final CanvasCubit canvasCubit,
    required final LevelPlayersBloc levelPlayersBloc,
  }) {
    RenderObjectModel player = canvasCubit.player;
    final position =
        game.canvasRenderer.origin + player.distanceToOrigin.toVector2();
    final serializedPosition = position.toSerializedVector2();
    if (player.id.isEmpty) {
      if (kDebugMode) print(['Player id is empty. Adding...']);
      final firstPlayer = canvasCubit.tilesPresetResources.players.values.first;
      player = RenderObjectModel(
        id: firstPlayer.id.toGid(),
        animationBehaviour: TileBehaviourType.idleRight,
        tileId: firstPlayer.id,
        position: serializedPosition,
      );
    } else {
      player = player.copyWith(
        position: serializedPosition,
        distanceToOrigin: SerializedVector2.zero,
        distanceToTileLeftTopCorner: SerializedVector2.zero,
      );
    }
    levelPlayersBloc.onChangeCharacter(
      levelPlayersBloc.state.playerCharacter.copyWith(
        gid: player.id,
        distanceToOrigin: player.distanceToOrigin,
      ),
    );
    return PlayerGameCanvasObject.fromRenderObject(
      data: player,
      characterModel: levelPlayersBloc.state.playerCharacter,
      onPositionChanged: (final value) {
        canvasCubit.player = value;
      },
    );
  }
  HotAirBalloonMechanics get hotAirBalloonMechanics =>
      game.dto.mechanics.hotAirBalloon;

  final PlayerCharacterModel characterModel;
  bool get _isFocusBorderVisible =>
      guiFocusableObjectsNotifier.isFocusing &&
      guiFocusableObjectsNotifier.value.focusedObjectId.isEmpty;

  void _pauseGame() => game.dto.mechanics.worldTime.pause();

  void _showLevelLostDialog() {
    _pauseGame();
    gameRef.dto.dialogController.showLevelLostDialog(
      EndLevelEvent(
        isPassed: false,
        maxDistance: maxDistance.toDouble(),
      ),
    );
  }

  void _onGuiFocusableObjectsChanged() {
    if (guiFocusableObjectsNotifier.isFocusing) {
      unawaited(
        guiFocusableObjectsNotifier.updateNearestObjectsOfPlayer(
          player: this,
        ),
      );
    }
  }

  int get maxDistance => topLeftTileMapCell.x;
  CellPointModel? get bottomLeftTileMapCell =>
      hitboxMapCells.length == 4 ? hitboxMapCells[3] : null;
  void _showLevelWinDialog() {
    _pauseGame();
    gameRef.dto.dialogController.showLevelWinDialog(
      EndLevelEvent(
        isPassed: true,
        maxDistance: maxDistance.toDouble(),
      ),
    );
  }

  @override
  void onRemove() {
    guiFocusableObjectsNotifier.removeListener(_onGuiFocusableObjectsChanged);
    super.onRemove();
  }

  void _onCollision(final double dt) => _onMove(dt, isCollided: true);

  @override
  void update(final double dt) {
    if (game.timePaused) {
      // do nothing
    } else {
      final collisionConsequences =
          game.dto.canvasCubit.checkIsCollidingWithTiles(
        hitboxMapCells: hitboxMapCells,
      );
      if (collisionConsequences.isNotEmpty && hitboxMapCells.isNotEmpty) {
        /// means we have at least one collision
        for (final consequence in collisionConsequences) {
          switch (consequence) {
            case CollisionConsequence.lose:
              _showLevelLostDialog();
              return;
            case CollisionConsequence.win:
              if (!game.featureSettings.isWindDirectionChangeEnabled) {
                _showLevelWinDialog();
              }

            case CollisionConsequence.none:
              _onCollision(dt);
          }
        }
      } else {
        _onMove(dt);
      }
    }

    super.update(dt);
  }

  void _onMove(final double dt, {final bool isCollided = false}) {
    final gameConstantsCubit = game.dto.gameConstantsCubit;
    final character = game.dto.levelPlayersBloc.state.playerCharacter;
    final gameConstants = gameConstantsCubit.state;

    LiftForceModel liftForce;

    /// can be positive and negative
    /// if negative, then it should stick to the ground
    ///
    /// if positive, then it's flying
    ///
    /// -4 -3 -2 -1 0 1 2 3 4
    /// ---------------------
    ///    Zero       Point
    ///
    /// Zero - point for right will be always negative
    /// for left will be always positive
    final gravity = canvasRenderer.canvasObjectsDrawer.gravity;
    final mapVector2 = gameVector2.mapVector2.toOffset();
    final height = gravity.getHeight(mapVector2);
    final heightInTiles = gravity.getHeightInTiles(mapVector2);
    final windOffset =
        game.dto.weatherCubit.generateWindForce(heightInTiles: heightInTiles);
    if (heightInTiles < 0 || isCollided) {
      // do not update position
      // update position if needed
      liftForce = hotAirBalloonMechanics.calculateLiftForce(
        constants: gameConstants.forces,
        balloonPowers: character.balloonPowers,
        balloonParams: character.balloonParams,
        height: 0,
      );
      if (liftForce.liftPower > 0) {
        final newPosition = screenVector2.copyWith(
          dy: screenVector2.dy - liftForce.liftPower,
        );
        setScreenPosition(newPosition + windOffset);
      }
    } else {
      // update position if needed
      liftForce = hotAirBalloonMechanics.calculateLiftForce(
        constants: gameConstants.forces,
        balloonPowers: character.balloonPowers,
        balloonParams: character.balloonParams,
        height: height,
      );
      final newPosition = screenVector2.copyWith(
        dy: screenVector2.dy - liftForce.liftPower,
      );
      setScreenPosition(newPosition + windOffset);
    }

    gameRef.dto.levelPlayersBloc.onChangeCharacterPosition(
      distanceToOrigin: mapVector2.toVector2(),
      liftForce: liftForce,
    );
  }

  /// this logic is similar to [BuildingSurfaceDrawer._checkAndAddObjects]
  ///
  /// maybe merge logic or reuse
  Future<List<Gid>> getNearestFocusableObjectsIds() async {
    final playerBottomLeftTileMapCell = player?.bottomLeftTileMapCell;

    if (playerBottomLeftTileMapCell == null) return [];
    final startMapVector2 = GameVector2.fromMapTileCell(
      math.Point(
        playerBottomLeftTileMapCell.x,
        playerBottomLeftTileMapCell.y,
      ),
    ).mapVector2;

    final objectsIds = <Gid>[];
    void checkAndVerify({
      required final Vector2 mapVector2,
    }) {
      final gameVector2 = GameVector2.fromMapVector2(mapVector2);
      final mapCell = gameVector2.toMapTileCell().toCellPoint();
      final collidableTiles = game.dto.canvasCubit.getFocusableTiles(
        hitboxMapCells: [mapCell],
      );

      if (collidableTiles.isEmpty) return;

      for (final (tile, _) in collidableTiles) {
        for (final object in tile.objects) {
          if (objectsIds.contains(object)) continue;
          objectsIds.add(object);
        }
      }
    }

    for (final (i: _, :xTile) in kFocusableTilesList) {
      final shiftedMapVector2 = startMapVector2.clone()
        ..translate(xTile, -1 * kTileDimensionDouble);
      checkAndVerify(mapVector2: shiftedMapVector2);
    }
    return objectsIds;
  }

  @override
  void render(final Canvas canvas) {
    super.render(canvas);
    if (_isFocusBorderVisible) {
      final rect = shiftedScreenHitbox;
      if (rect != null) {
        canvas.drawRRect(
          RRect.fromRectAndRadius(
            rect,
            FocusedObjectComponent.kBorderRadius,
          ),
          FocusedObjectComponent.kBorderPaint,
        );
      }
    }
  }
}
