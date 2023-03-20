import 'package:provider/provider.dart';
import 'package:word_by_word_game/subgames/quick_game/game/game.dart';

class WbwGameProvider extends Provider<WbwGame> {
  WbwGameProvider({
    required final WbwGame game,
    super.child,
    super.key,
  }) : super(create: (final context) => game);
}
