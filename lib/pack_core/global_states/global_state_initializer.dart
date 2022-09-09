import 'package:flutter/widgets.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';

class GlobalStateInitializer extends StateInitializer {
  @override
  Future<void> onLoad(final BuildContext context) async {
    final read = context.read;
    // TODO(arenukvern): LoadLevelEvent
    read<LevelBloc>().add(const LoadLevelEvent());
  }
}
