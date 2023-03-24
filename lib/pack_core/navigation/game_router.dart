import 'package:flame/game.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/game_renderer/game_renderer.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/player_controls.dart';

enum GameRoutes { level }

enum GameOverlaysRoutes { levelsHud, debug }

class GameOverlayBuilderMapRouter {
  const GameOverlayBuilderMapRouter();
  Map<String, OverlayWidgetBuilder<WbwGame>> build() =>
      _build().map((final key, final value) => MapEntry(key.name, value));
  Map<GameOverlaysRoutes, OverlayWidgetBuilder<WbwGame>> _build() => {
        GameOverlaysRoutes.levelsHud: (final context, final game) =>
            WbwGameProvider(
              game: game,
              child: const LevelsHudScreenOverlay(),
            ),
      };
}

class GameRoutesBuilder {
  const GameRoutesBuilder();
  Map<GameRoutes, Route> _build() => {};

  Map<String, Route> build() =>
      _build().map((final key, final value) => MapEntry(key.name, value));
}
