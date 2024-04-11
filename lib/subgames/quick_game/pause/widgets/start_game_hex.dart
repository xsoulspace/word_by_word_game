import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/pack_core.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/pause/pause.dart';

class StartGameHex extends StatelessWidget {
  const StartGameHex({super.key});

  @override
  Widget build(final BuildContext context) {
    final state = context.read<PauseScreenState>();
    final routeState = context.watch<RouteState>();
    final routeArgs = LevelRouteArgs.fromJson(routeState.route.parameters);
    final levelId = CanvasDataModelId.fromJson(routeArgs.levelId);
    final isLevelRunning = levelId.isNotEmpty;
    final uiTheme = context.uiTheme;

    return Provider(
      create: (final context) => state,
      builder: (final context, final child) =>
          BlocBuilder<GlobalGameBloc, GlobalGameBlocState>(
        builder: (final context, final blocState) {
          final canvasData = blocState.allCanvasData.values
              .firstWhere((final e) => e.tilesetType == TilesetType.whiteBlack);

          return Center(
            child: Column(
              key: ValueKey(canvasData),
              mainAxisSize: MainAxisSize.min,
              children: [
                uiTheme.verticalBoxes.large,
                LevelStartDialogButton(level: canvasData)
                    .animate()
                    .then(duration: 150.milliseconds)
                    .fadeIn()
                    .slideY(begin: -0.1),
                uiTheme.verticalBoxes.large,
                if (isLevelRunning)
                  UiFilledButton.text(
                    text: S.of(context).continueGame,
                    onPressed: () async => state.onContinue(id: levelId),
                  )
                      .animate()
                      .then(duration: 450.milliseconds)
                      .fadeIn()
                      .slideY(begin: -0.1),
              ],
            ),
          );
        },
      ),
    );
  }
}
