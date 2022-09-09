import 'package:provider/provider.dart';
import 'package:word_by_word_game/pack_game/game/game.dart';

class MoonDefenceGameProvider extends Provider<MoonDefenceGame> {
  MoonDefenceGameProvider({
    required final MoonDefenceGame game,
    super.child,
    super.key,
  }) : super(create: (final context) => game);
}
