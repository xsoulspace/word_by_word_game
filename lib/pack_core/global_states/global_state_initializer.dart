import 'package:flutter/material.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/ephemeral/ephemeral.dart';

class GlobalStateInitializer extends StateInitializer {
  @override
  Future<void> onLoad(final BuildContext context) async {
    final read = context.read;
    final player = PlayerProfileModel.create(
      name: 'ohman',
      colorValue: Colors.red.value,
    );
    final players = <PlayerProfileModel>[player];
    final levels = <LevelModel>[
      LevelModel(
        id: 'test level',
        players: LevelPlayersModel(
          currentPlayerId: player.id,
          players: players,
        ),
      ),
    ];
    final initGameEvent = InitGlobalGameEvent(
      gameModel: GameModel(
        id: 'game',
        levels: levels,
        currentLevelId: levels.first.id,
      ),
    );
    read<GlobalGameBloc>().add(initGameEvent);
  }
}
