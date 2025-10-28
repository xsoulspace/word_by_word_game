// ignore_for_file: lines_longer_than_80_chars

import 'dart:math' as math;

import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/pack_core/global_states/weather/weather_cubit.dart';

mixin TechLevelMixin on StatelessWidget {
  ({bool isUnblocked, bool isPlaying, bool isAdvancedGame})
  useTechLevelAvailable(
    final BuildContext context,
    final TechnologyLevelIndex levelIndex,
  ) {
    final isPlaying = context.select<StatesStatusesCubit, bool>(
      (final cubit) => cubit.state.levelStateStatus == LevelStateStatus.playing,
    );
    final isAdvancedGame = context.select<LevelBloc, bool>(
      (final cubit) => cubit.featuresSettings.isAdvancedGame,
    );
    final technologiesCubit = context.watch<TechnologiesCubit>();
    final (
      levelIndex: lastLevelIndex,
      :scoreLeftForNextLevel,
      :technologies,
      :title,
      :scoresByLevel,
    ) = technologiesCubit
        .getCurrentLevel();

    return (
      isUnblocked:
          isPlaying && (!isAdvancedGame || lastLevelIndex > levelIndex),
      isPlaying: isPlaying,
      isAdvancedGame: isAdvancedGame,
    );
  }

  bool useBuildingTechAvailable(
    final BuildContext context,
    final GuiBuildingTypeEnum buildingType,
  ) {
    final isPlaying = context.select<StatesStatusesCubit, bool>(
      (final cubit) => cubit.state.levelStateStatus == LevelStateStatus.playing,
    );
    final isAdvancedGame = context.select<LevelBloc, bool>(
      (final cubit) => cubit.featuresSettings.isAdvancedGame,
    );

    final isBuildingExists = context.select<CanvasCubit, bool>(
      (final cubit) => cubit.isBuildingExists(buildingType),
    );
    return isPlaying && (!isAdvancedGame || isBuildingExists);
  }
}

class UIWeatherBar extends StatelessWidget with TechLevelMixin {
  const UIWeatherBar({super.key});

  @override
  Widget build(final BuildContext context) {
    final isAllowedToBeVisible = useBuildingTechAvailable(
      context,
      GuiBuildingTypeEnum.windWaterTower,
    );
    if (!isAllowedToBeVisible) {
      return const SizedBox.shrink();
    }
    final locale = useLocale(context);
    final state = context.watch<WeatherCubit>().state;
    final currentWeather = state.weather;
    final currentWind = state.wind;
    final borderColor = context.colorScheme.onSurface.withOpacity(0.2);
    final borderSide = BorderSide(color: borderColor);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        decoration: BoxDecoration(
          color: context.colorScheme.surface.withOpacity(0.7),
          border: Border.fromBorderSide(borderSide),
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.elliptical(8, 8),
            bottomLeft: Radius.elliptical(8, 8),
          ),
        ),
        constraints: const BoxConstraints(minWidth: 300),
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 4,
        ).copyWith(left: 2),
        child: TutorialFrame(
          highlightPosition: Alignment.bottomRight,
          uiKey: TutorialUiItem.currentWind,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _CurrentWeatherText(
                tooltipMessage: LocalizedMap({
                  uiLanguages.en: 'Current weather type',
                  uiLanguages.ru: 'Текущий тип погоды',
                  uiLanguages.it: 'Tipo di previsione attuale',
                }).getValue(locale),
                weather: currentWeather,
              ),

              /// wind direction
              ConstrainedBox(
                constraints: const BoxConstraints(minWidth: 50, maxWidth: 60),
                child: Container(
                  decoration: BoxDecoration(border: Border(right: borderSide)),
                  margin: const EdgeInsets.only(left: 8, right: 6),
                  child: Column(
                    children: [
                      WindDirectionBadge(
                        tooltipMessage: LocalizedMap({
                          uiLanguages.en: 'Horizontal wind force',
                          uiLanguages.ru: 'Горизонтальная сила ветера',
                          uiLanguages.it: 'Forza del vento orizzontale',
                        }).getValue(locale),
                        value: currentWind.force.x,
                        direction: Axis.horizontal,
                      ),
                      Divider(color: borderColor, height: 1, thickness: 1),
                      WindDirectionBadge(
                        tooltipMessage: LocalizedMap({
                          uiLanguages.en:
                              'Vertical wind force, can blow up or down',
                          uiLanguages.ru:
                              'Вертикальная сила ветера, может дуть вниз или вверх',
                          uiLanguages.it:
                              'Forza del vento verticale, puô essere sopra o sotto',
                        }).getValue(locale),
                        value: currentWind.force.y,
                        direction: Axis.vertical,
                      ),
                    ],
                  ),
                ),
              ),
              // TODO(arenukvern): add summary wind direction
              AnimatedSize(
                duration: 350.milliseconds,
                child: _NextWeathersRow(weathers: state.weathers),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NextWeathersRow extends StatelessWidget {
  const _NextWeathersRow({required this.weathers});
  final List<WeatherModel> weathers;

  @override
  Widget build(final BuildContext context) {
    Iterable<WeatherModel> allNextWeathers = [...weathers].skip(1);
    final locale = useLocale(context);
    final state = context.watch<WeatherCubit>().state;
    final firstWeather = allNextWeathers.firstOrNull;
    allNextWeathers = allNextWeathers.skip(1).take(3);
    return Row(
      children: [
        if (firstWeather != null)
          Tooltip(
            message: LocalizedMap({
              uiLanguages.en: 'Next weather predictions',
              uiLanguages.ru: 'Предсказания погоды',
              uiLanguages.it: 'Previsioni della prossima previsione',
            }).getValue(locale),
            child: TutorialFrame(
              highlightPosition: Alignment.bottomRight,
              uiKey: TutorialUiItem.currentWeather,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        '${firstWeather.windScale.emojiRepresentation}${LocalizedMap({uiLanguages.en: 'in', uiLanguages.ru: 'в', uiLanguages.it: 'in'}).getValue(locale)} ${state.weather.durationInGameSeconds}',
                        style: context.textTheme.labelSmall,
                      ),
                      WindDirectionArrow.fromWeather(weather: firstWeather),
                    ],
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
              top: BorderSide(color: context.colorScheme.onSurface),
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
                              color: context.colorScheme.onSurface,
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                          Text(
                            ' ${e.windScale.emojiRepresentation}',
                            textAlign: TextAlign.center,
                          ),
                          Positioned(
                            top: 10,
                            child: WindDirectionArrow.fromWeather(weather: e),
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
        WindDirectionArrow(direction: direction, value: value),
        const Gap(2),
      ],
    ),
  );
}

class WindDirectionArrow extends StatelessWidget {
  const WindDirectionArrow({
    required this.value,
    required this.direction,
    super.key,
  });
  factory WindDirectionArrow.fromWeather({
    required final WeatherModel weather,
  }) => WindDirectionArrow(
    value: weather.windDirection.sign.toDouble(),
    direction: Axis.horizontal,
  );
  final double value;
  final Axis direction;

  @override
  Widget build(final BuildContext context) => Transform.rotate(
    angle: () {
      final degree = switch (direction) {
        Axis.vertical => 90,
        Axis.horizontal => value > 0 ? 0 : 180,
      };
      final effectiveAngle = degree * math.pi / 180;

      return value < 0 ? effectiveAngle : -effectiveAngle;
    }(),
    child: Icon(
      Icons.arrow_right_alt_rounded,
      color: context.colorScheme.tertiary,
      size: 16,
    ),
  );
}
