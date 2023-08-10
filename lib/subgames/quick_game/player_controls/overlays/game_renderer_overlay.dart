import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/pack_core/global_states/debug/debug.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/global_states/weather/weather_cubit.dart';
import 'package:word_by_word_game/pack_core/navigation/app_router.dart';
import 'package:word_by_word_game/subgames/quick_game/debug_side_bar/debug_side_bar.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/elements.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/overlays/warning_notification.dart';
import 'package:word_by_word_game/subgames/quick_game/players_side_bar/players_side_bar.dart';

part 'game_renderer_overlay_state.dart';

class LevelsHudScreenOverlay extends HookWidget {
  const LevelsHudScreenOverlay({super.key});

  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    // final theme = Theme.of(context);
    final screenSize = MediaQuery.sizeOf(context);
    return Portal(
      child: Stack(
        children: [
          Positioned(
            top: screenSize.height * 0.1,
            right: 16,
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [UiPauseButton(), Gap(16), UiRandomWordButton()],
            ),
          ),
          Positioned(
            left: 0,
            top: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (DeviceRuntimeType.isMobile) const SizedBox(height: 24),
                const LastWordWidget().animate().fadeIn().slideX(begin: -0.1),
                uiTheme.verticalBoxes.medium,
                const UIPlayersSideBar(),
                const Gap(16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: BlocBuilder<WeatherCubit, WeatherCubitState>(
                    builder: (final context, final state) => Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          // ignore: lines_longer_than_80_chars
                          '${S.of(context).wind}: ${state.weather.windScale.toLocalizedName(context)} '
                          // ignore: lines_longer_than_80_chars
                          '| ${state.wind.force.x.toStringAsFixed(2)} ${state.wind.force.y.toStringAsFixed(2)}',
                        ),
                        const Gap(8),
                        Text(
                          // ignore: lines_longer_than_80_chars
                          '${S.of(context).nextWeatherIn}: ${state.weather.durationInGameSeconds} ',
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: BlocSelector<LevelPlayersBloc, LevelPlayersBlocState,
                      BalloonLiftPowersModel>(
                    selector: (final state) =>
                        state.playerCharacter.balloonPowers,
                    builder: (final context, final powers) => Column(
                      children: [
                        const Gap(8),
                        GestureDetector(
                          onTap: () {
                            context.read<DebugCubit>().tryOpenDebugPane();
                          },
                          child: Text(
                            // ignore: lines_longer_than_80_chars
                            '${S.of(context).power}: ${powers.power ~/ kScoreFactor} ',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            top: 20,
            right: 20,
            left: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(child: UIWarningNotification()),
              ],
            ),
          ),
          const Positioned(
            top: 20,
            right: 0,
            child: UiDebugSideBar(),
          ),
        ],
      ),
    );
  }
}
