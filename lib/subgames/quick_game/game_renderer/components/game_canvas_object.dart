import 'dart:async';
import 'dart:math' as math;

import 'package:collection/collection.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/extensions.dart';
import 'package:flame_bloc/flame_bloc.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter_animate/flutter_animate.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:map_editor/state/state.dart';
import 'package:map_editor/ui/renderer/editor_renderer.dart';
import 'package:map_editor/ui/renderer/renderer.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/game_renderer/game_renderer.dart';

class PlayerGameCanvasObject extends GameCanvasObject {
  PlayerGameCanvasObject.fromRenderObject({
    required super.onPositionChanged,
    required this.characterModel,
    required super.data,
  }) : super.fromRenderObject();
  factory PlayerGameCanvasObject.fromCanvasCubit({
    required final CanvasRendererGame game,
    required final CanvasCubit canvasCubit,
    required final LevelPlayersBloc levelPlayersBloc,
  }) {
    RenderObjectModel player = canvasCubit.player;
    final position =
        game.canvasRenderer.origin + player.distanceToOrigin.toVector2();
    if (player.id.isEmpty) {
      final updatedPlayer = RenderObjectModel(
        id: const Gid(value: 'Tester'),
        animationBehaviour: TileBehaviourType.idleRight,
        tileId: kPlayerTileId,
        position: position.toSerializedVector2(),
      );

      /// creating player if it is empty
      canvasCubit.player = updatedPlayer;
    } else {
      player = player.copyWith(position: position.toSerializedVector2());
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
      game.diDto.mechanics.hotAirBalloon;

  final PlayerCharacterModel characterModel;

  void _pauseGame() => game.diDto.mechanics.worldTime.pause();

  void _showLevelLostDialog() {
    _pauseGame();
    gameRef.diDto.dialogController.showLevelLostDialog(
      EndLevelEvent(
        isWon: false,
        maxDistance: maxDistance.toDouble(),
      ),
    );
  }

  int get maxDistance => absoluteCell.x;

  void _showLevelWinDialog() {
    _pauseGame();

    unawaited(
      gameRef.diDto.globalGameBloc.onLevelEnd(
        EndLevelEvent(
          isWon: true,
          maxDistance: maxDistance.toDouble(),
        ),
      ),
    );
    gameRef.diDto.dialogController.showLevelWinDialog();
  }

  void _onCollision(final double dt) => _onMove(dt, isCollided: true);

  @override
  void update(final double dt) {
    if (game.timePaused) {
      // do nothing
    } else {
      final collisionConsequences =
          game.diDto.canvasCubit.checkIsCollidingWithTiles(
        hitboxCells: hitboxCells,
      );
      if (collisionConsequences.isNotEmpty) {
        /// means we have at least one collision
        for (final consequence in collisionConsequences) {
          switch (consequence) {
            case CollisionConsequence.lose:
              _showLevelLostDialog();
              return;
            case CollisionConsequence.win:
              _showLevelWinDialog();

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
    final gameConstantsCubit = game.diDto.gameConstantsCubit;
    final character = game.diDto.levelPlayersBloc.state.playerCharacter;
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

    final height = gravity.getHeight(distanceToOrigin);
    final heightInTiles = gravity.getHeightInTiles(distanceToOrigin);
    final windOffset =
        game.diDto.weatherCubit.generateWindForce(heightInTiles: heightInTiles);
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
        final newPosition = position.copyWith(
          dy: position.dy - liftForce.liftPower,
        );
        setPosition(newPosition + windOffset);
      }
    } else {
      // update position if needed
      liftForce = hotAirBalloonMechanics.calculateLiftForce(
        constants: gameConstants.forces,
        balloonPowers: character.balloonPowers,
        balloonParams: character.balloonParams,
        height: height,
      );
      final newPosition = position.copyWith(
        dy: position.dy - liftForce.liftPower,
      );
      setPosition(newPosition + windOffset);
    }

    gameRef.diDto.levelPlayersBloc.onChangeCharacterPosition(
      distanceToOrigin: distanceToOrigin.toVector2(),
      liftForce: liftForce,
    );
  }
}

mixin HasCanvasResourcesLoaderRef on Component, HasGameRef<CanvasRendererGame> {
  Image getImage(final String path) => game.images.fromCache(path);
}

class GameCanvasObject extends Component
    with
        TapCallbacks,
        HasGameRef<CanvasRendererGame>,
        HasCanvasRendererRef,
        HasCanvasResourcesLoaderRef {
  GameCanvasObject.fromRenderObject({
    required final material.ValueChanged<RenderObjectModel> onPositionChanged,
    required this.data,
  })  : position = data.position.toOffset(),
        distanceToOrigin = data.distanceToOrigin.toOffset(),
        distanceToTileLeftTopCorner =
            data.distanceToTileLeftTopCorner.toOffset(),
        onChanged = onPositionChanged;

  final material.ValueChanged<RenderObjectModel>? onChanged;
  Gid get gid => data.id;
  TileId get tileId => data.tileId;
  final RenderObjectModel data;

  Offset position;
  Offset distanceToOrigin;
  Offset distanceToTileLeftTopCorner;

  /// relative cell, depends from the origin position and
  /// screen changes
  math.Point<int> _cell = const math.Point<int>(0, 0);

  /// should never be changed outside
  math.Point<int> get cell => _cell;

  /// absolute coordinate for screen
  math.Point<int> _absoluteCell = const math.Point<int>(0, 0);

  /// should never be changed outside
  math.Point<int> get absoluteCell => _absoluteCell;

  void _updateDistanceToOrigin() {
    distanceToOrigin = position - origin.toOffset();
    final cellTopLeftPosition = Offset(
      (cell.x * kTileDimension).toDouble(),
      (cell.y * kTileDimension).toDouble(),
    );
    distanceToTileLeftTopCorner = distanceToOrigin - cellTopLeftPosition;
    final originUtils = OriginVectorUtils.use(origin);
    _absoluteCell = originUtils.getAbsoluteCellByCanvasObject(
      objectDistanceToOrigin: distanceToOrigin,
    );
    _cell = originUtils.getCurrentCellByCanvasObject(
      objectDistanceToOrigin: distanceToOrigin,
    );
  }

  @override
  FutureOr<void> onLoad() {
    _updateDistanceToOrigin();
    return super.onLoad();
  }

  Rect? _hitboxRect;
  Rect? get shiftedHitbox => _hitboxRect?.shift(position);
  List<CellPointModel> get hitboxCells {
    final hitbox = shiftedHitbox;
    if (hitbox == null) {
      return [];
    }
    final originUtils = OriginVectorUtils.use(origin);
    final topLeft = absoluteCell.toCellPoint();
    final topRight = originUtils.getAbsoluteCellByCanvasObject(
      objectDistanceToOrigin: distanceToOrigin + Offset(hitbox.width, 0),
    );
    final bottomRight = originUtils.getAbsoluteCellByCanvasObject(
      objectDistanceToOrigin:
          distanceToOrigin + Offset(hitbox.width, hitbox.height),
    );
    final bottomLeft = originUtils.getAbsoluteCellByCanvasObject(
      objectDistanceToOrigin: distanceToOrigin + Offset(0, hitbox.height),
    );
    return [
      topLeft,
      topRight.toCellPoint(),
      bottomRight.toCellPoint(),
      bottomLeft.toCellPoint(),
    ];
  }

  @override
  void render(final Canvas canvas) {
    if (tileId.isEmpty) return super.render(canvas);
    final resourceTile = allTiles[tileId]!;
    // TODO(antmalofeev): replace with listener
    final renderObject = canvasCubit.objects[gid]!;

    final animationEntry =
        resourceTile.behaviourPaths[renderObject.animationBehaviour]!;

    final tilePath = animationEntry.currentFramePath;
    final tileImage = getImage(tilePath);
    _hitboxRect ??= Rect.fromLTWH(
      0,
      0,
      tileImage.width.toDouble(),
      tileImage.height.toDouble(),
    );
    if (debugMode) {
      final hitbox = shiftedHitbox;
      if (hitbox != null) {
        canvas.drawRect(
          hitbox,
          Palette.red.paint(),
        );
      }
    }
    canvas.drawImage(
      tileImage,
      position,
      Palette.white.paint(),
    );
    super.render(canvas);
  }

  void _savePosition() {
    onChanged?.call(
      data.copyWith(
        position: position.toSerializedVector2(),
        distanceToOrigin: distanceToOrigin.toSerializedVector2(),
        distanceToTileLeftTopCorner:
            distanceToTileLeftTopCorner.toSerializedVector2(),
      ),
    );
  }

  void onOriginUpdate() {
    _updatePosition();
    _savePosition();
  }

  void setPosition(final Offset newPosition) {
    position = newPosition;
    _updateDistanceToOrigin();
    _savePosition();
  }

  void _updatePosition() {
    position = origin.toOffset() + distanceToOrigin;
  }

  @override
  bool containsLocalPoint(final Vector2 point) =>
      _hitboxRect?.containsPoint(point) ?? false;
}

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

  GravityModel get gravity => const GravityModel(yTilePosition: 10);
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
