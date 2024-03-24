import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/pack_core/global_states/debug/debug.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/global_states/weather/weather_cubit.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/elements.dart';
import 'package:word_by_word_game/subgames/quick_game/players_side_bar/players_side_bar.dart';
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
    final screenSize = MediaQuery.sizeOf(context);
    final uiTheme = context.uiTheme;
    return DialogStack(
      children: [
        Positioned(
          top: screenSize.height * 0.1,
          right: 16,
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [UiPauseButton()],
          ),
        ),
        Positioned(
          left: 0,
          top: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SafeArea(bottom: false, child: SizedBox()),
              const WeatherBar(),
              uiTheme.verticalBoxes.medium,
              const _Statistics(),
            ],
          ),
        ),
        Builder(
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
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const MobileTutorialDialog(),
                    bottomDialog,
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class _Statistics extends StatelessWidget {
  const _Statistics();

  @override
  Widget build(final BuildContext context) {
    final uiTheme = context.uiTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LastWordWidget().animate().fadeIn().slideX(begin: -0.1),
        uiTheme.verticalBoxes.medium,
        const UIPlayersSideBar(),
        uiTheme.verticalBoxes.medium,
        Padding(
          padding: const EdgeInsets.all(8),
          child: BlocSelector<LevelPlayersBloc, LevelPlayersBlocState,
              BalloonLiftPowersModel>(
            selector: (final state) => state.playerCharacter.balloonPowers,
            builder: (final context, final powers) => Column(
              children: [
                const Gap(8),
                TutorialFrame(
                  highlightPosition: MediaQuery.sizeOf(context).width >
                          WidthFormFactor.mobileTutorialMaxWidth
                      ? Alignment.centerRight
                      : Alignment.bottomCenter,
                  uiKey: TutorialUiItem.baloonPower,
                  child: GestureDetector(
                    onTap: () {
                      context.read<DebugCubit>().tryOpenDebugPane();
                    },
                    child: Text(
                      // ignore: lines_longer_than_80_chars
                      '${S.of(context).power}: ${powers.power ~/ kScoreFactor} ',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class WeatherBar extends StatelessWidget {
  const WeatherBar({super.key});

  @override
  Widget build(final BuildContext context) {
    final state = context.watch<WeatherCubit>().state;
    final weather = state.weather;
    final wind = state.wind;
    return Container(
      decoration: BoxDecoration(
        color: context.colorScheme.tertiaryContainer.withOpacity(0.5),
        borderRadius: const BorderRadius.all(Radius.elliptical(4, 4)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: TutorialFrame(
        highlightPosition: Alignment.bottomRight,
        uiKey: TutorialUiItem.currentWind,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // TODO(arenukvern): l10n
            Text('${weather.windScale.toLocalizedName(context)} 💨'),
            const Gap(3),
            ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 50,
                maxWidth: 60,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: context.colorScheme.background.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Column(
                  children: [
                    WindDirectionBadge(
                      value: wind.force.x,
                      direction: Axis.horizontal,
                    ),
                    Divider(
                      color: context.colorScheme.tertiary.withOpacity(0.2),
                      height: 1,
                      thickness: 1,
                    ),
                    WindDirectionBadge(
                      value: wind.force.y,
                      direction: Axis.vertical,
                    ),
                  ],
                ),
              ),
            ),
            const Gap(8),
            TutorialFrame(
              highlightPosition: Alignment.bottomRight,
              uiKey: TutorialUiItem.currentWeather,
              child: Column(
                children: [
                  // TODO(arenukvern): l10n
                  const Text('NEXT'),
                  Text('${state.weather.durationInGameSeconds} '),
                ],
              ),
            ),
            const Gap(4),
          ],
        ),
      ),
    );
  }
}

class WindDirectionBadge extends StatelessWidget {
  const WindDirectionBadge({
    required this.value,
    required this.direction,
    super.key,
  });
  final double value;
  final Axis direction;
  @override
  Widget build(final BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                (value.sign * value * 100).round().toString(),
                style: context.textTheme.labelSmall,
              ),
            ),
          ),
          Transform.rotate(
            angle: () {
              final effectiveAngle =
                  (direction == Axis.vertical ? 90 : 0) * math.pi / 180;
              return value < 0 ? effectiveAngle : -effectiveAngle;
            }(),
            child: Icon(
              Icons.arrow_right_alt_rounded,
              color: context.colorScheme.tertiary,
              size: 16,
            ),
          ),
        ],
      );
}
