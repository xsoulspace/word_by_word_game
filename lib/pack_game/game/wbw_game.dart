import 'dart:async';

import 'package:flame/game.dart';
import 'package:flame_bloc/flame_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/navigation/navigation.dart';

part 'wbw_game_di.dart';

class WbwGame extends FlameGame with HasCollisionDetection {
  WbwGame.use({required final Locator read})
      : diDto = WbwGameDiDto.use(read: read);
  final WbwGameDiDto diDto;
  late final RouterComponent router;

  @override
  Future<void> onLoad() async {
    router = const GameRouter().init();
    await addAll([router]);
    // Enable initial overlays
    overlays.addAll([
      GameOverlaysRoutes.levelsHud.name,
    ]);
    return super.onLoad();
  }
}
