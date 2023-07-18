import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame_bloc/flame_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/envs.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/navigation/navigation.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/game_renderer/canvas_renderer.dart';
import 'package:word_by_word_game/subgames/quick_game/game_renderer/components/character_component.dart';
import 'package:word_by_word_game/subgames/quick_game/utils/utils.dart';

export 'canvas_renderer.dart';
export 'game_widget.dart';

part 'game_renderer_dto.dart';

class GameRendererGame extends FlameGame with HasCollisionDetection {
  GameRendererGame.use({
    required final Locator read,
    required final ThemeData theme,
    required final DialogController dialogController,
  }) : diDto = GameRendererDiDto.use(
          read: read,
          theme: theme,
          dialogController: dialogController,
        );
  final GameRendererDiDto diDto;

  late CameraComponent worldCamera;
  late final World world;
  late FlameMultiBlocProvider providersComponent;
  final canvasRenderer = CanvasRenderer();

  late ObstacleLevelHelper obstacleLevelHelper;

  @override
  Future<void> onLoad() async {
    debugMode = kDebugMode && !Envs.isMarketingMode;
    mouseCursor = material.SystemMouseCursors.none;
    children
      ..register<CameraComponent>()
      ..register<World>()
      ..register<FlameMultiBlocProvider>();

    world = World();
    worldCamera = await _initCamera();
    await diDto.canvasCubit.loadCache(images: images);

    diDto.mechanics.worldTime.addListener(_onWorldTimeChange);
    providersComponent = diDto.getBlocsProviderComponent(
      children: [
        world,
        worldCamera,
      ],
    );

    await add(providersComponent);
    await world.add(
      FlameBlocListener<GlobalGameBloc, GlobalGameBlocState>(
        onNewState: _handleGlobalGameStateChanges,
      ),
    );
    // Enable initial overlays
    overlays.addAll([
      GameOverlaysRoutes.levelsHud.name,
    ]);
    // assets loading

    await images.load(kDefaultTilesetPath);

    return super.onLoad();
  }

  Future<CameraComponent> _initCamera() async {
    // final bounds = Rectangle.fromLTRB(0, 0, 1500, 1200);
    // final camera = CameraComponent(
    //   world: world,
    // ); //..setBounds(bounds);

    // camera.viewfinder
    //   ..visibleGameSize = Vector2(
    //     kVisibleTilesWidth * kTileDimension.toDouble() / 2,
    //     kVisibleTilesHeight * kTileDimension.toDouble(),
    //   )
    //   ..anchor = Anchor.center;
    // return camera;
    final camera = CameraComponent(
      world: world,
    );

    camera.viewfinder.anchor = Anchor.topLeft;
    return camera;
  }

  void _onWorldTimeChange(final WorldTimeMechanics worldTimeMechanics) {
    if (worldTimeMechanics.paused) {
      if (paused) return;
      paused = true;
    } else {
      if (!paused) return;
      paused = false;
    }
  }

  Future<void> _handleGlobalGameStateChanges(
    final GlobalGameBlocState state,
  ) async {
    if (state.isLevelCompletelyLoaded) {
      if (!isLevelLoaded) await onLoadLevel();
    } else {
      unloadLevel();
    }
  }

  PlayerGameCanvasObject? character;
  bool get isLevelLoaded => character != null && !isLevelLoading;
  bool isLevelLoading = false;
  Future<void> onLoadLevel() async {
    if (isLevelLoading) return;
    isLevelLoading = true;

    isLevelLoading = false;
  }

  /// Unloads current level, unassignes character from the camera
  void unloadLevel() {
    if (character != null) {
      worldCamera.stop();
      character?.removeFromParent();
      character = null;
    }
  }

  @override
  Color backgroundColor() => diDto.theme.colorScheme.surface;
}
