import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame_bloc/flame_bloc.dart';
import 'package:flutter/material.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_game/game/wbw_game.dart';
import 'package:word_by_word_game/pack_game/mechanics/mechanics.dart';
import 'package:word_by_word_game/pack_game/utils/utils.dart';

class CharacterComponent extends PositionComponent with HasGameRef<WbwGame> {
  CharacterComponent({
    required this.levelHeight,
    required this.obstacleLevelHelper,
    required this.characterModel,
  }) : super(
          size: Vector2(16, 16),
        );
  final PlayerCharacterModel characterModel;
  final paint = Paint();
  final double levelHeight;
  late FlyingObjectsParams params;
  final ObstacleLevelHelper obstacleLevelHelper;
  late Sprite sprite;

  @override
  Future<void>? onLoad() async {
    await add(
      FlameBlocListener<LevelPlayersBloc, LevelPlayersBlocState>(
        onNewState: _handleLevelState,
      ),
    );
    final asset = characterModel.asset;
    sprite = await Sprite.load(
      kDefaultTilesetPath,
      srcPosition: Vector2(
        asset.srcPosition.x,
        asset.srcPosition.y,
      ),
      srcSize: Vector2(
        asset.srcSizeX.toDouble(),
        asset.srcSizeY.toDouble(),
      ),
    );
    paint.color = Color(characterModel.color);
    params = const FlyingObjectsParams();
    position = characterModel.position.isZero
        ? Vector2(
            params.minXBoundry,
            ((kMapTilesPlayableHeight - 3) * kTileDimension).toDouble(),
          )
        : characterModel.position.toVector2();
    return super.onLoad();
  }

  void _handleLevelState(final LevelPlayersBlocState levelState) {
    if (levelState is! LiveLevelPlayersBlocState) return;
    params = params.copyWith(
      fuel: levelState.playerCharacter.fuel,
    );
  }

  @override
  void render(final Canvas canvas) {
    final textPaint = TextPaint(
      style: const TextStyle(
        fontSize: 18.0,
        color: Colors.blue,
      ),
    );
    sprite.render(canvas, size: size);
    textPaint.render(canvas, '${params.fuel.value.toInt()}', Vector2(16, 8));

    super.render(canvas);
  }

  void _showLevelLostDialog() {
    gameRef.diDto
      ..globalGameBloc.add(const CharacterCollisionEvent())
      ..dialogController.showLevelLostDialog(
        EndLevelEvent(
          isWon: false,
          maxDistance: maxDistance.toDouble(),
        ),
      );
  }

  int get maxDistance =>
      obstacleLevelHelper.roundToTileDimension(position.x) -
      obstacleLevelHelper.roundToTileDimension(params.minXBoundry);

  void _showLevelWinDialog() {
    gameRef.diDto
      ..globalGameBloc.add(const CharacterCollisionEvent())
      ..globalGameBloc.add(
        EndLevelEvent(
          isWon: true,
          maxDistance: maxDistance.toDouble(),
        ),
      )
      ..dialogController.showLevelWinDialog();
  }

  void _onCollision() {
    final sideCollision = obstacleLevelHelper.checkSideCollision(position);
    if (sideCollision.hasRightSideCollision) {
      _showLevelWinDialog();
    } else if (sideCollision.hasLeftSideCollision) {
      _showLevelLostDialog();
    } else {
      _showLevelLostDialog();
    }
  }

  @override
  void update(final double dt) {
    final collided = obstacleLevelHelper.checkCollision(position);
    if (collided) {
      _onCollision();
    }
    final mechanics = BasicFlyingObjectMechanics(
      params: params,
    );
    final yResult = mechanics.getYVelocity(y);
    if (y < params.minYBoundry && yResult.fuel > 0) {
      // noop
    } else {
      y -= yResult.force;
    }
    gameRef.diDto.levelPlayersBloc.add(
      ConsumeFuelEvent(
        fuel: FuelStorageModel(
          // value: 1,
          value: yResult.fuel,
        ),
      ),
    );
    x -= mechanics.xVelocity;

    gameRef.diDto.levelPlayersBloc.add(
      ChangeCharacterPositionEvent(
        position: position,
      ),
    );

    // fuel = 90;
    // y = 0;
    // x = 0;
    super.update(dt);
  }
}
