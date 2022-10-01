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

  @override
  Future<void>? onLoad() async {
    await add(
      FlameBlocListener<LevelPlayersBloc, LevelPlayersBlocState>(
        onNewState: _handleLevelState,
      ),
    );
    paint.color = Color(characterModel.color);
    params = const FlyingObjectsParams();
    position = Vector2(params.minXBoundry, (kMapTilesPlayableHeight - 2) * 16);
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
        fontSize: 24.0,
        color: Colors.blue,
      ),
    );

    canvas.drawRect(
      Rect.fromLTWH(0, 0, width, height),
      paint,
    );
    textPaint.render(canvas, '${params.fuel.value}', Vector2(10, 10));

    super.render(canvas);
  }

  void onCollision() {
    print('!!COLLISION!!');
  }

  @override
  void update(final double dt) {
    final collided = obstacleLevelHelper.checkCollision(position);
    if (collided) {
      onCollision();
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
    gameRef.diDto.levelPlayersBloc
        .add(ConsumeFuelEvent(fuel: FuelStorageModel(value: yResult.fuel)));
    x -= mechanics.xVelocity;
    // fuel = 90;
    // y = 0;
    // x = 0;
    super.update(dt);
  }
}
