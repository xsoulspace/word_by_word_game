import 'package:flame/game.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';

enum GameRoutes { moonSurface, room }

enum GameOverlaysRoutes { levelsHud, debug }

class GameRouter {
  const GameRouter();
  RouterComponent init() {
    return RouterComponent(
      initialRoute: GameRoutes.moonSurface.name,
      routes: const GameRoutesBuilder().build(),
    );
  }
}

class GameOverlayBuilderMapRouter {
  const GameOverlayBuilderMapRouter();
  Map<String, OverlayWidgetBuilder<MoonDefenceGame>> build() =>
      _build().map((final key, final value) => MapEntry(key.name, value));
  Map<GameOverlaysRoutes, OverlayWidgetBuilder<MoonDefenceGame>> _build() {
    return {
      GameOverlaysRoutes.levelsHud: (final context, final game) =>
          MoonDefenceGameProvider(
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
      GameRoutes.moonSurface: Route(MoonSurfaceLvlComponent.new),
      GameRoutes.room: Route(RoomLvlComponent.new),
    };
  }

  Map<String, Route> build() {
    return _build().map((final key, final value) => MapEntry(key.name, value));
  }
}
