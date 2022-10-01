import 'package:flutter/material.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/ephemeral/ephemeral.dart';
import 'package:word_by_word_game/pack_core/pack_core.dart';
import 'package:word_by_word_game/pack_game/game/game.dart';

class GlobalStateInitializer extends StateInitializer {
  @override
  Future<void> onLoad(final BuildContext context) async {
    final read = context.read;
    final globalGameBloc = read<GlobalGameBloc>();
    final services = read<ServicesCollection>();
    final appRouterController = AppRouterController.use(read);
    final initGameEvent = await loadGameModel(services: services);
    globalGameBloc.add(initGameEvent);
    final currentLevelId = initGameEvent.gameModel.currentLevelId;
    if (currentLevelId.isNotEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((final timeStamp) {
        appRouterController.toPause(id: currentLevelId);
      });
    }
  }

  Future<InitGlobalGameEvent> loadGameModel({
    required final ServicesCollection services,
  }) async {
    final savedGame = await services.gamePersistence.loadGame();
    if (savedGame != null) {
      return InitGlobalGameEvent(gameModel: savedGame);
    }

    final player = PlayerProfileModel.create(
      name: 'ohman player',
      colorValue: Colors.red.value,
    );
    final players = <PlayerProfileModel>[player];
    return InitGlobalGameEvent(
      gameModel: GameModel(
        id: 'game',
        templateLevels: const [
          TemplateLevelModel(
            id: 'black_white_mountains_1',
            resources: ResourcesModel(
              tileMapName: 'pixel_black_white_landscape',
            ),
            stringName: 'Black & White Mountains',
          ),
        ],
        playersCharacters: [
          PlayerCharacterModel(
            id: 'ohman char',
            name: 'OhMan',
            asset: CharacterAssetModel(
              srcPositionX: 0,
              srcPositionY: kTileDimension * 6,
              srcSizeX: kTileDimension,
              srcSizeY: kTileDimension,
            ),
            description: 'Simple boring character',
            color: Colors.green.value,
          ),
          PlayerCharacterModel(
            id: 'waterman',
            name: 'Waterman',
            asset: CharacterAssetModel(
              srcPositionX: 0,
              srcPositionY: kTileDimension * 6,
              srcSizeX: kTileDimension,
              srcSizeY: kTileDimension,
            ),
            description: 'Another boring character',
            color: Colors.cyan.value,
          )
        ],
        currentLevelId: '',
        playersCollection: players,
      ),
    );
  }
}
