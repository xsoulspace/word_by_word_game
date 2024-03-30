import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/weather/weather_cubit.dart';

class UIWeatherBar extends StatelessWidget {
  const UIWeatherBar({super.key});

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
