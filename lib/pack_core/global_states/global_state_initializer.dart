import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:map_editor/state/models/saveable_models/saveable_models.dart';
import 'package:provider/provider.dart';
import 'package:universal_io/io.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/ads/states/states.dart';
import 'package:word_by_word_game/pack_core/app/app_di.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/pack_core.dart';

class GlobalSettingsInitializer extends StateInitializer {
  @override
  Future<void> onLoad(final BuildContext context) async {
    final read = context.read;
    final appSettingsNotifier = read<AppSettingsCubit>();
    await appSettingsNotifier.onLoad();
  }
}

class GlobalStateInitializer extends StateInitializer {
  GlobalStateInitializer({
    required this.servicesDto,
  });
  final AppDiProviderDto servicesDto;
  @override
  Future<void> onLoad(final BuildContext context) async {
    final read = context.read;
    final adManager = read<AdManager>();
    final dictionariesBloc = read<DictionariesBloc>();
    final globalGameBloc = read<GlobalGameBloc>();
    final services = read<ServicesCollection>();
    final analyticsService = read<AnalyticsService>();
    final canvasCubit = read<CanvasCubit>();
    final localDictionary =
        await services.dictionariesRepository.loadDictionary();
    await dictionariesBloc.onLoad(localDictionary: localDictionary);
    await canvasCubit.loadInitialData();
    final appRouterController = AppRouterController.use(read);
    final initGame = await GameInitializer().loadGameModel(
      services: services,
    );
    await globalGameBloc.onInitGlobalGame(initGame);
    await servicesDto.firebaseInitializer?.onDelayedLoad();
    await analyticsService.onDelayedLoad();
    await adManager.onLoad();
    final event = () {
      if (kIsWeb) return AnalyticEvents.usedInWeb;
      if (Platform.isAndroid) return AnalyticEvents.usedInAndroid;
    }();
    if (event != null) unawaited(analyticsService.logAnalyticEvent(event));

    final currentLevelId = initGame.currentLevelId;
    if (currentLevelId.isNotEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((final timeStamp) {
        appRouterController.toPause(id: currentLevelId);
      });
    }
  }
}

class GameInitializer {
  List<PlayerCharacterModel> get characters => [
        PlayerCharacterModel(
          id: const Gid(value: 'balloon 1'),
          gid: const Gid(value: 'balloon 1'),
          localizedName: const LocalizedMap(
            value: {
              Languages.en: 'Hot Air Balloon',
              Languages.ru: 'Воздушный шар',
              Languages.it: 'Mongolfiera',
            },
          ),
          characterIcon: 'char_hot_air_baloon',
          description: 'Moves with the wind..',
          color: Colors.green.value,
        ),
      ];

  /// the logic is to migrate from the version to to the next version
  GameSaveModel migrateSave(final GameSaveModel savedGame) {
    GameSaveModel game = savedGame;
    for (var i = savedGame.version.index; i < GameVersion.values.length; i++) {
      switch (savedGame.version) {
        case GameVersion.$1:
          game = game.copyWith(
            version: GameVersion.$3,
            currentLevelId: CanvasDataModelId.empty,
            playersCharacters: characters,
            currentLevel: null,
          );
        case GameVersion.$2:
          game = game.copyWith(
            version: GameVersion.$3,
            currentLevelId: CanvasDataModelId.empty,
            currentLevel: null,
            playersCharacters: characters
                .map(
                  (final e) => e.copyWith(
                    balloonPowers: BalloonLiftPowersModel.initial,
                    balloonParams: BalloonLiftParamsModel.initial,
                  ),
                )
                .toList(),
          );
        case GameVersion.$3:
      }
    }
    return game;
  }

  Future<GameSaveModel> loadGameModel({
    required final ServicesCollection services,
  }) async {
    final savedGame = await services.gameRepository.loadGame();
    if (savedGame != null) {
      return migrateSave(savedGame);
    }

    return GameSaveModel(
      id: 'game',
      playersCharacters: characters,
      currentLevelId: CanvasDataModelId.empty,
    );
  }
}
