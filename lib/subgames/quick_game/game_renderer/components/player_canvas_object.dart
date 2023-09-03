import 'dart:async';

import 'package:flame/extensions.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/game_renderer/components/game_canvas_object.dart';
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
    final serializedPosition = position.toSerializedVector2();
    if (player.id.isEmpty) {
      final firstPlayer = canvasCubit.tilesPresetResources.players.values.first;
      final updatedPlayer = RenderObjectModel(
        id: firstPlayer.id.toGid(),
        animationBehaviour: TileBehaviourType.idleRight,
        tileId: firstPlayer.id,
        position: serializedPosition,
      );

      /// creating player if it is empty
      canvasCubit.player = updatedPlayer;
      player = updatedPlayer;
    } else {
      player = player.copyWith(position: serializedPosition);
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
