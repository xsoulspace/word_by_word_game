import 'dart:async';

import 'package:flame/game.dart';
import 'package:flame_bloc/flame_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/navigation/navigation.dart';
import 'package:word_by_word_game/pack_game/pack_game.dart';

part 'wbw_game_di.dart';

class WbwGame extends FlameGame with HasCollisionDetection, FlameGameActions {
  WbwGame.use({required final Locator read})
      : diDto = WbwGameDiDto.use(read: read);
  final WbwGameDiDto diDto;
  late final RouterComponent router;
  final worldTime = WorldTimeMechanics();
  @override
  Future<void> onLoad() async {
    router = const GameRouter().init();
    worldTime.addListener(listenWorldTime);
    await addAll([router, worldTime]);
    // Enable initial overlays
    overlays.addAll([
      GameOverlaysRoutes.levelsHud.name,
    ]);
    return super.onLoad();
  }

  void listenWorldTime(final WorldTimeMechanics time) {
    diDto.globalGameBloc.add(WorldTimeTickEvent(time));
  }

  @override
  void onRemove() {
    worldTime.removeListener(listenWorldTime);
    super.onRemove();
  }
}

mixin FlameGameActions on FlameGame {
  void onRestart() {
    // TODO(username): description
    throw UnimplementedError();
  }

  void onResume() {
    resumeEngine();
  }

  void onPause() {
    pauseEngine();
  }
}
