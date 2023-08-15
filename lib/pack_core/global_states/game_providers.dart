import 'package:provider/provider.dart';
import 'package:word_by_word_game/subgames/quick_game/game_renderer/game_renderer.dart';

class WbwGameProvider extends Provider<CanvasRendererGame> {
  WbwGameProvider({
    required final CanvasRendererGame game,
    super.child,
    super.key,
  }) : super(create: (final context) => game);
}
