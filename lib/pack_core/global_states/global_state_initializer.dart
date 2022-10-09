import 'package:flutter/material.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/ephemeral/dictionaries_bloc.dart';
import 'package:word_by_word_game/pack_core/global_states/ephemeral/ephemeral.dart';
import 'package:word_by_word_game/pack_core/pack_core.dart';
import 'package:word_by_word_game/pack_game/game/game.dart';

class GlobalStateInitializer extends StateInitializer {
  @override
  Future<void> onLoad(final BuildContext context) async {
    final read = context.read;
    final dictionariesBloc = read<DictionariesBloc>();
    final globalGameBloc = read<GlobalGameBloc>();
    final services = read<ServicesCollection>();
    final localDictionary =
        await services.dictionaryPersistence.loadDictionary();
    final initDictionary =
        InitDictionariesBlocEvent(localDictionary: localDictionary);
    dictionariesBloc.add(initDictionary);
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
            id: 'hot-air-balloon',
            name: 'Hot Air Balloon',
            asset: CharacterAssetModel(
              srcPosition: SerializedVector2(x: 0, y: kTileDimension * 6),
              srcSizeX: kTileDimension,
              srcSizeY: kTileDimension,
            ),
            description: 'Moves with the wind..',
            color: Colors.green.value,
          ),
        ],
        currentLevelId: '',
        playersCollection: const [],
      ),
    );
  }
}
