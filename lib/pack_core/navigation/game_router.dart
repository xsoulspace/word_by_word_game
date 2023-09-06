import 'package:flame/game.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/debug_side_bar/debug_overlay.dart';
import 'package:word_by_word_game/subgames/quick_game/game_renderer/game_renderer.dart';
import 'package:word_by_word_game/subgames/quick_game/overlays/overlays.dart';

enum GameRoutes { level }

enum GameOverlaysRoutes { levelsHud, debug, dialog }

class GameOverlayBuilderMapRouter {
  const GameOverlayBuilderMapRouter();
  Map<String, OverlayWidgetBuilder<CanvasRendererGame>> build() =>
      _build().map((final key, final value) => MapEntry(key.name, value));
  Map<GameOverlaysRoutes, OverlayWidgetBuilder<CanvasRendererGame>> _build() =>
      {
        GameOverlaysRoutes.dialog: (final context, final game) =>
            const GuiOverlay(),
        GameOverlaysRoutes.levelsHud: (final context, final game) =>
            const HudOverlay(),
        GameOverlaysRoutes.debug: (final context, final game) =>
            WbwGameProvider(
              game: game,
              child: const DebugOverlay(),
            ),
      };
}
