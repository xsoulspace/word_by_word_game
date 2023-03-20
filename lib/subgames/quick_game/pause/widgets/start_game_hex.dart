import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/gen/gen.dart';
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
    final levelId = routeArgs.levelId;
    final isLevelRunning = levelId.isNotEmpty;
    final uiTheme = UiTheme.of(context);

    return Provider(
      create: (final context) => state,
      builder: (final context, final child) =>
          BlocBuilder<GlobalGameBloc, GlobalGameBlocState>(
        builder: (final context, final blocState) {
          if (blocState is! LiveGlobalGameBlocState) {
            return const SizedBox();
          }
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
                        Container(
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage(
                                'assets/images/tilesets/${level.resources.tileMapIcon}_highres.png',
                              ),
                            ),
                          ),
                        ),
                        uiTheme.verticalBoxes.large,
                        LevelStartDialogButton(
                          level: level,
                        ),
                        uiTheme.verticalBoxes.large,
                        UiFilledButton.text(
                          text: S.of(context).continueGame,
                          onPressed: isLevelRunning
                              ? () => state.onContinue(id: levelId)
                              : null,
                        ),
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
