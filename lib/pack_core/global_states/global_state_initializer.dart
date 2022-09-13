import 'package:flutter/widgets.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';

class GlobalStateInitializer extends StateInitializer {
  @override
  Future<void> onLoad(final BuildContext context) async {
    final read = context.read;
    // TODO(arenukvern): LoadLevelEvent
    // read<LevelBloc>().add(const InitLevelEvent());
  }
}
