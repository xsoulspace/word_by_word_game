import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:universal_io/io.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/pack_core.dart';
import 'package:word_by_word_game/pack_game/ads/states/ad_manager.dart';
import 'package:word_by_word_game/pack_game/game/game.dart';

class GlobalSettingsInitializer extends StateInitializer {
  @override
  Future<void> onLoad(final BuildContext context) async {
    final read = context.read;
    final appSettingsNotifier = read<AppSettingsNotifier>();
    await appSettingsNotifier.onLoad();
  }
}

class GlobalStateInitializer extends StateInitializer {
  @override
  Future<void> onLoad(final BuildContext context) async {
    final read = context.read;
    final adManager = read<AdManager>();
    final dictionariesBloc = read<DictionariesBloc>();
    final globalGameBloc = read<GlobalGameBloc>();
    final services = read<ServicesCollection>();
    final analyticsNotifier = read<AnalyticsNotifier>();
    final localDictionary =
        await services.dictionaryPersistence.loadDictionary();
    final initDictionary =
        InitDictionariesBlocEvent(localDictionary: localDictionary);
    dictionariesBloc.add(initDictionary);
    final appRouterController = AppRouterController.use(read);
    final initGameEvent =
        await GameInitializer().loadGameModel(services: services);
    globalGameBloc.add(initGameEvent);
    await FirebaseInitializer().onDelayedLoad();
    await analyticsNotifier.onDelayedLoad();
    await adManager.onLoad();
    final event = () {
      if (kIsWeb) return AnalyticEvents.usedInWeb;
      if (Platform.isAndroid) return AnalyticEvents.usedInAndroid;
    }();
    if (event != null) unawaited(analyticsNotifier.logAnalyticEvent(event));

    final currentLevelId = initGameEvent.gameModel.currentLevelId;
    if (currentLevelId.isNotEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((final timeStamp) {
        appRouterController.toPause(id: currentLevelId);
      });
    }
  }
}

class GameInitializer {
  List<TemplateLevelModel> get templateLevels {
    return [
      const TemplateLevelModel(
        id: 'black_white_mountains_1',
        resources: ResourcesModel(
          tileMapName: 'pixel_black_white_landscape',
          tileMapIcon: 'pixel_black_white_map_icon',
        ),
        name: LocalizedMap(
          value: {
            Languages.en: 'Black & White Mountains',
            Languages.ru: 'Черно-белые горы',
            Languages.it: 'Montagne in bianco e nero',
          },
        ),
      ),
    ];
  }

  List<PlayerCharacterModel> get characters {
    return [
      PlayerCharacterModel(
        id: 'hot-air-balloon',
        localizedName: const LocalizedMap(
          value: {
            Languages.en: 'Hot Air Balloon',
            Languages.ru: 'Воздушный шар',
            Languages.it: 'Mongolfiera',
          },
        ),
        asset: CharacterAssetModel(
          srcPosition: SerializedVector2(x: 0, y: kTileDimension * 6),
          srcSizeX: kTileDimension,
          srcSizeY: kTileDimension,
        ),
        characterIcon: 'char_hot_air_baloon',
        description: 'Moves with the wind..',
        color: Colors.green.value,
      ),
    ];
  }

  /// the logic is to migrate from the version to to the next version
  GameModel migrateSave(final GameModel savedGame) {
    GameModel game = savedGame;
    for (var i = savedGame.version.index; i < GameVersion.values.length; i++) {
      switch (savedGame.version) {
        case GameVersion.$1:
          game = game.copyWith(
            version: GameVersion.$2,
            playersCharacters: characters,
            templateLevels: templateLevels,
          );
          break;
        case GameVersion.$2:
          break;
      }
    }
    return game;
  }

  Future<InitGlobalGameEvent> loadGameModel({
    required final ServicesCollection services,
  }) async {
    final savedGame = await services.gamePersistence.loadGame();
    if (savedGame != null) {
      return InitGlobalGameEvent(
        gameModel: migrateSave(savedGame),
      );
    }

    return InitGlobalGameEvent(
      gameModel: GameModel(
        id: 'game',
        version: kLatestGameVersion,
        templateLevels: templateLevels,
        playersCharacters: characters,
        currentLevelId: '',
        playersCollection: const [],
      ),
    );
  }
}
