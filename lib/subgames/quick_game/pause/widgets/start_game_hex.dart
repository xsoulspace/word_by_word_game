import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_editor/state/models/saveable_models/saveable_models.dart';
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
    final uiTheme = UiTheme.of(context);

    return Provider(
      create: (final context) => state,
      builder: (final context, final child) =>
          BlocBuilder<GlobalGameBloc, GlobalGameBlocState>(
        builder: (final context, final blocState) {
          final levels = blocState.templateLevels;

          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: levels
                  .map(
                    (final level) => Column(
                      key: ValueKey(level),
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        uiTheme.verticalBoxes.large,
                        LevelStartDialogButton(
                          level: level,
                        )
                            .animate()
                            .then(duration: 150.milliseconds)
                            .fadeIn()
                            .slideY(begin: -0.1),
                        uiTheme.verticalBoxes.large,
                        UiFilledButton.text(
                          text: S.of(context).continueGame,
                          onPressed: isLevelRunning
                              ? () async => state.onContinue(id: levelId)
                              : null,
                        )
                            .animate()
                            .then(duration: 450.milliseconds)
                            .fadeIn()
                            .slideY(begin: -0.1),
                      ],
                    ),
                  )
                  .toList(),
            ),
          );
        },
      ),
    );
  }
}
