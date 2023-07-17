import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/experimental.dart';
import 'package:flame/game.dart';
import 'package:flame_bloc/flame_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/envs.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/navigation/navigation.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/game_renderer/components/components.dart';
import 'package:word_by_word_game/subgames/quick_game/utils/utils.dart';

part 'wbw_game_di.dart';

int get kTileDimension => 16;

int get kMapTilesPlayableHeight => 20;

int get kVisibleTilesHeight => 12;
int get kVisibleTilesWidth => 30;
String get kDefaultTilesetPath => 'tilesets/pixel_black_white_tileset.png';
const int kLevelSideTileWidth = 16;

class WbwGame extends FlameGame with HasCollisionDetection {
  WbwGame.use({
    required final Locator read,
    required final ThemeData theme,
    required final DialogController dialogController,
  }) : diDto = WbwGameDiDto.use(
          read: read,
          theme: theme,
          dialogController: dialogController,
        );
  final WbwGameDiDto diDto;

  late CameraComponent worldCamera;
  late final World world;
  late FlameMultiBlocProvider providersComponent;
  late ObstacleLevelHelper obstacleLevelHelper;

  @override
  Future<void> onLoad() async {
    debugMode = kDebugMode && !Envs.isMarketingMode;

    children.register<CameraComponent>();
    world = World();
    diDto.mechanics.worldTime.addListener(_onWorldTimeChange);
    providersComponent = diDto.getBlocsProviderComponent(
      children: [
        world,
      ],
    );

    worldCamera = await _initCamera();
    await providersComponent.add(worldCamera);
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
    final bounds = Rectangle.fromLTRB(0, 0, 1500, 1200);
    final camera = CameraComponent(
      world: world,
    ); //..setBounds(bounds);

    camera.viewfinder
      ..visibleGameSize = Vector2(
        kVisibleTilesWidth * kTileDimension.toDouble() / 2,
        kVisibleTilesHeight * kTileDimension.toDouble(),
      )
      ..anchor = Anchor.center;
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

  CharacterComponent? character;
  bool get isLevelLoaded => character != null && !isLevelLoading;
  bool isLevelLoading = false;
  Future<void> onLoadLevel() async {
    if (isLevelLoading) return;
    isLevelLoading = true;
    final playersState = diDto.levelPlayersBloc.getLiveState();
// final obstacleLevelHelper = ObstacleLevelHelper.fromMapComponent(
//           tiledMapComponent: map,
//           tileDimension: kTileDimension,
//         )..onLoad();

//         const groundHeight = 30.0;

//         final newCharacter = CharacterComponent(
//           levelHeight: map.tileMap.map.height.toDouble() + groundHeight,
//           obstacleLevelHelper: obstacleLevelHelper,
//           characterModel: playersState.playerCharacter,
//         );
//         await world.add(newCharacter);

//         worldCamera.follow(newCharacter);
//         character = newCharacter;
    // final levelLayout = LevelLayoutComponent(
    //   tileMapName: resourcesState.tileMapName,
    //   tileDimension: kTileDimension,
    //   onLoadBuilder: (final map) async {

    //   },
    // );
    // currentLevelLayout = levelLayout;
    // await world.addAll([levelLayout]);
    isLevelLoading = false;
  }

  /// Unloads current level, unassignes character from the camera
  void unloadLevel() {
    if (character != null) {
      worldCamera.stop();
      character?.removeFromParent();
      character = null;
    }
    // if (currentLevelLayout != null) {
    //   currentLevelLayout?.removeFromParent();
    //   currentLevelLayout = null;
    // }
  }

  @override
  Color backgroundColor() => diDto.theme.colorScheme.surface;
}
