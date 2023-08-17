import 'package:map_editor/state/models/models.dart';
import 'package:provider/provider.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/quick_game.dart';

class GuiOverlay extends StatelessWidget {
  const GuiOverlay({super.key});

  @override
  Widget build(final BuildContext context) {
    final isLoaded = context.select<StatesStatusesCubit, bool>(
      (final bloc) => bloc.state.levelStateStatus != LevelStateStatus.loading,
    );
    final currentLevelId = context.select<GlobalGameBloc, CanvasDataModelId>(
      (final bloc) => bloc.state.currentLevelId,
    );

    return DialogStack(
      child: Builder(
        builder: (final context) {
          final bottomDialog = isLoaded && currentLevelId.isNotEmpty
              ? const GameBottomBar()
              : const SizedBox();

          return Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: bottomDialog,
            ),
          );
        },
      ),
    );
  }
}
