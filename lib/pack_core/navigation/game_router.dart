import 'package:flame/game.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_game/pack_game.dart';

enum GameRoutes { level }

enum GameOverlaysRoutes { levelsHud, debug }

class GameRouter {
  const GameRouter();
  RouterComponent init() {
    return RouterComponent(
      initialRoute: GameRoutes.level.name,
      routes: const GameRoutesBuilder().build(),
    );
  }
}

class GameOverlayBuilderMapRouter {
  const GameOverlayBuilderMapRouter();
  Map<String, OverlayWidgetBuilder<WbwGame>> build() =>
      _build().map((final key, final value) => MapEntry(key.name, value));
  Map<GameOverlaysRoutes, OverlayWidgetBuilder<WbwGame>> _build() {
    return {
      GameOverlaysRoutes.levelsHud: (final context, final game) =>
          WbwGameProvider(
            game: game,
            child: const LevelsHudScreenOverlay(),
          ),
    };
  }
}

class GameRoutesBuilder {
  const GameRoutesBuilder();
  Map<GameRoutes, Route> _build() {
    return {
      GameRoutes.level: Route(LevelComponent.new),
    };
  }

  Map<String, Route> build() {
    return _build().map((final key, final value) => MapEntry(key.name, value));
  }
}
