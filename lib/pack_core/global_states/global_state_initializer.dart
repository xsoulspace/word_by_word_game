import 'package:flutter/material.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/ephemeral/ephemeral.dart';

class GlobalStateInitializer extends StateInitializer {
  @override
  Future<void> onLoad(final BuildContext context) async {
    final read = context.read;
    // TODO(arenukvern): load the latest game or create the game from the template
    final player = PlayerProfileModel.create(
      name: 'ohman',
      colorValue: Colors.red.value,
    );
    final players = <PlayerProfileModel>[player];
    final initGameEvent = InitGlobalGameEvent(
      gameModel: GameModel(
        id: 'game',
        templateLevels: const [
          TemplateLevelModel(
            id: 'test level',
          ),
        ],
        currentLevelId: '',
        playersCollection: players,
      ),
    );
    read<GlobalGameBloc>().add(initGameEvent);
  }
}
