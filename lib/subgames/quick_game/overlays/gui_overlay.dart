import 'dart:math' as math;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
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
          top: 0,
          left: 0,
          right: 0,
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
        const _PowerBar(),
        uiTheme.verticalBoxes.medium,
        const LastWordWidget().animate().fadeIn().slideX(begin: -0.1),
        uiTheme.verticalBoxes.medium,
        const UIPlayersSideBar(),
        uiTheme.verticalBoxes.medium,
      ],
    );
  }
}

class _PowerBar extends StatelessWidget {
  const _PowerBar({super.key});

  @override
  Widget build(final BuildContext context) {
    final playerParams = context.select<LevelPlayersBloc, PlayerCharacterModel>(
      (final value) => value.state.playerCharacter,
    );
    final powers = playerParams.balloonPowers;
    final size = MediaQuery.sizeOf(context);
    final currentPower = playerParams.balloonPowers.power;
    final maxPower = playerParams.balloonParams.maxPower;
    final power =
        clampDouble(currentPower, 0, playerParams.balloonParams.maxPower);
    final powerRatio = power / maxPower;
    final maxWidth = clampDouble(size.width * 0.5, 160, 180);
    return GestureDetector(
      onTap: () {
        context.read<DebugCubit>().tryOpenDebugPane();
      },
      child: Tooltip(
        message:
            // TODO(arenukvern): l10n
            'Power. This force creates the lift force that moves the balloon upwards.',
        child: Row(
          children: [
            const Gap(4),
            Icon(
              Icons.fireplace,
              color: context.colorScheme.error,
            ),
            const Gap(4),
            TutorialFrame(
              highlightPosition: MediaQuery.sizeOf(context).width >
                      WidthFormFactor.mobileTutorialMaxWidth
                  ? Alignment.centerRight
                  : Alignment.bottomCenter,
              uiKey: TutorialUiItem.baloonPower,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.elliptical(52, 52),
                      ),
                      color: context.colorScheme.error.withOpacity(0.3),
                      border: Border.all(color: context.colorScheme.error),
                    ),
                    height: 24,
                    width: maxWidth,
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    bottom: 0,
                    child: AnimatedContainer(
                      duration: 20.milliseconds,
                      width: powerRatio * maxWidth,
                      decoration: BoxDecoration(
                        color: context.colorScheme.error.withOpacity(0.6),
                        borderRadius: const BorderRadius.all(
                          Radius.elliptical(52, 52),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 8,
                    bottom: 0,
                    child: Center(
                      child: Text(
                        '${playerParams.balloonParams.maxPower ~/ kScoreFactor} / ${powers.power ~/ kScoreFactor}',
                        style: context.textThemeBold.bodyMedium?.copyWith(
                          color:
                              context.colorScheme.background.withOpacity(0.8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WeatherBar extends StatelessWidget {
  const WeatherBar({super.key});

  @override
  Widget build(final BuildContext context) {
    final state = context.watch<WeatherCubit>().state;
    final currentWeather = state.weather;
    final currentWind = state.wind;
    final borderColor = context.colorScheme.onBackground.withOpacity(0.2);
    final borderSide = BorderSide(color: borderColor);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        decoration: BoxDecoration(
          color: context.colorScheme.background.withOpacity(0.7),
          border: Border(right: borderSide, bottom: borderSide),
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.elliptical(8, 8),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4)
            .copyWith(left: 2),
        child: TutorialFrame(
          highlightPosition: Alignment.bottomRight,
          uiKey: TutorialUiItem.currentWind,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _CurrentWeatherText(
                // TODO(arenukvern): l10n
                tooltipMessage: 'Current wind type',
                weather: currentWeather,
              ),

              /// wind direction
              ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 50,
                  maxWidth: 60,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(right: borderSide),
                  ),
                  margin: const EdgeInsets.only(left: 8, right: 6),
                  child: Column(
                    children: [
                      WindDirectionBadge(
                        value: currentWind.force.x,
                        // TODO(arenukvern): l10n
                        tooltipMessage: 'Horizontal wind force',
                        direction: Axis.horizontal,
                      ),
                      Divider(
                        color: borderColor,
                        height: 1,
                        thickness: 1,
                      ),
                      WindDirectionBadge(
                        // TODO(arenukvern): l10n
                        tooltipMessage:
                            'Vertical wind force, can blow up or down',
                        value: currentWind.force.y,
                        direction: Axis.vertical,
                      ),
                    ],
                  ),
                ),
              ),
              // TODO(arenukvern): add summary wind direction
              _NextWeathersRow(weathers: state.weathers),
            ],
          ),
        ),
      ),
    );
  }
}

class _NextWeathersRow extends StatelessWidget {
  const _NextWeathersRow({
    required this.weathers,
    super.key,
  });
  final List<WeatherModel> weathers;

  @override
  Widget build(final BuildContext context) {
    Iterable<WeatherModel> allNextWeathers = [...weathers].skip(1);
    final state = context.watch<WeatherCubit>().state;
    final firstWeather = allNextWeathers.firstOrNull;
    allNextWeathers = allNextWeathers.skip(1).take(3);
    return Row(
      children: [
        if (firstWeather != null)
          Tooltip(
            // TODO(arenukvern): l10n
            message: 'Next weather predictions',
            child: TutorialFrame(
              highlightPosition: Alignment.bottomRight,
              uiKey: TutorialUiItem.currentWeather,
              child: Column(
                children: [
                  Text(
                    // TODO(arenukvern): l10n
                    '${firstWeather.windScale.emojiRepresentation}in ${state.weather.durationInGameSeconds}',
                    style: context.textTheme.labelSmall,
                  ),
                  Text(
                    firstWeather.windScale.toLocalizedName(context),
                    style: context.textTheme.labelSmall?.copyWith(
                      letterSpacing: 0.1,
                      wordSpacing: 0.1,
                      fontWeight: FontWeight.w100,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        const Gap(8),
        DecoratedBox(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: context.colorScheme.onBackground),
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            children: allNextWeathers
                .map(
                  (final e) => Tooltip(
                    message: e.windScale.toLocalizedName(context),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(minWidth: 24),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Container(
                            width: 1,
                            height: 6,
                            decoration: BoxDecoration(
                              color: context.colorScheme.onBackground,
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                          Text(
                            ' ${e.windScale.emojiRepresentation}',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}

class _CurrentWeatherText extends StatelessWidget {
  const _CurrentWeatherText({
    required this.weather,
    required this.tooltipMessage,
    super.key,
  });
  final WeatherModel weather;
  final String tooltipMessage;
  @override
  Widget build(final BuildContext context) {
    final windScale = weather.windScale;
    return Tooltip(
      message: tooltipMessage,
      child: Row(
        children: [
          Text(
            windScale.emojiRepresentation,
            style: context.textTheme.titleLarge,
          ),
          const Gap(2),
          Text(
            windScale
                .toLocalizedName(context)
                .toUpperCase()
                .split(' ')
                .join('\n'),
            style: context.textThemeBold.labelMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class WindDirectionBadge extends StatelessWidget {
  const WindDirectionBadge({
    required this.value,
    required this.direction,
    required this.tooltipMessage,
    super.key,
  });
  final double value;
  final Axis direction;
  final String tooltipMessage;
  @override
  Widget build(final BuildContext context) => Tooltip(
        message: tooltipMessage,
        child: Row(
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
            const Gap(2),
          ],
        ),
      );
}
