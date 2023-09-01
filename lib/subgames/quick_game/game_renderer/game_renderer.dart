import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';
import 'package:flame_bloc/flame_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_editor/state/state.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/envs.dart';
import 'package:word_by_word_game/pack_core/global_states/debug/debug_cubit.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/global_states/weather/weather_cubit.dart';
import 'package:word_by_word_game/pack_core/navigation/navigation.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/game_renderer/canvas_renderer.dart';
import 'package:word_by_word_game/subgames/quick_game/utils/utils.dart';

export 'canvas_renderer.dart';
export 'game_widget.dart';

part 'game_renderer_dto.dart';

class CanvasRendererGame extends FlameGame
    with
        HasCollisionDetection, // replace to MouseMovementDetector (?)
        SingleGameInstance,
        // replace to MouseMovementDetector (?)
        HasHoverables {
  CanvasRendererGame.use({
    required final BuildContext context,
    required final ThemeData theme,
    required final DialogController dialogController,
  }) : diDto = GameRendererDiDto.use(
          context: context,
          theme: theme,
          dialogController: dialogController,
        );
  final GameRendererDiDto diDto;

  late CameraComponent worldCamera;
  late final World world;
  late FlameMultiBlocProvider providersComponent;
  final canvasRenderer = CanvasRenderer();

  late ObstacleLevelHelper obstacleLevelHelper;

  bool get timePaused => diDto.mechanics.worldTime.paused;

  @override
  Future<void> onLoad() async {
    const prefix = 'packages/map_editor/assets/images/';
    images.prefix = prefix;
    debugMode = kDebugMode && !Envs.isMarketingMode;
    // mouseCursor = material.SystemMouseCursors.none;
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

    final style = material.TextStyle(color: BasicPalette.red.color);
    final regular = TextPaint(style: style);

    await add(providersComponent);
    await world.addAll([
      FlameBlocListener<GlobalGameBloc, GlobalGameBlocState>(
        onNewState: _handleGlobalStateChanges,
      ),
      FlameBlocListener<StatesStatusesCubit, StatesStatusesCubitState>(
        onNewState: _handleLevelStateChanges,
      ),
      // temporary enabling it
      if (debugMode)
        FpsTextComponent(
          textRenderer: regular,
          priority: 100,
        )
          ..anchor = Anchor.topLeft
          ..x = 32
          ..y = 32.0,
      canvasRenderer,
    ]);
    final oldOverlays = [...overlays.activeOverlays];
    overlays
      ..clear()
      // Enable initial overlays and old ones
      ..addAll([
        GameOverlaysRoutes.levelsHud.name,
        ...oldOverlays,
      ]);
    // assets loading

    // await images.load(kDefaultTilesetPath);

    return super.onLoad();
  }

  Future<CameraComponent> _initCamera() async {
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

  void _handleGlobalStateChanges(final GlobalGameBlocState gameBlocState) {
    // canvasObjectsDrawer.onOriginUpdate();
  }

  Future<void> _handleLevelStateChanges(
    final StatesStatusesCubitState state,
  ) async {
    switch (state.levelStateStatus) {
      case LevelStateStatus.loading:
        unloadLevel();
      case LevelStateStatus.paused || LevelStateStatus.playing:
        if (!isLevelLoaded) await onLoadLevel();
    }
  }

  // PlayerGameCanvasObject? character;
  bool get isLevelLoaded =>
      // character != null &&
      !isLevelLoading;
  bool isLevelLoading = false;
  Future<void> onLoadLevel() async {
    if (isLevelLoading) return;
    isLevelLoading = true;
    isLevelLoading = false;
  }

  /// Unloads current level, unassignes character from the camera
  void unloadLevel() {}

  @override
  Color backgroundColor() => Colors.transparent;
}
