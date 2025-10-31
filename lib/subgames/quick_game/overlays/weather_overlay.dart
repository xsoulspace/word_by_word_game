import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/pack_core/global_states/weather/weather_cubit.dart';

class WeatherOverlay extends StatelessWidget {
  const WeatherOverlay({super.key});

  @override
  Widget build(final BuildContext context) {
    final weather = context.select<WeatherCubit, WeatherModel>(
      (final c) => c.state.weather,
    );
    return _WeatherOverlayBody(weather: weather);
  }
}

class _WeatherOverlayBody extends StatefulWidget {
  const _WeatherOverlayBody({required this.weather, super.key});
  final WeatherModel weather;

  @override
  State<_WeatherOverlayBody> createState() => _WeatherOverlayBodyState();
}

class _WeatherOverlayBodyState extends State<_WeatherOverlayBody> {
  late WeatherModel _currentWeather = widget.weather;

  /// The idea slightly shift the opacity of the overlay
  /// creating effect of "clouds"
  ///
  /// Or, as an idea, create raycasting effects with clouds
  double _maxTargetOpacity = 0;

  // TODO(arenukvern): add lightning
  /// from 0 to 10, when 10 is 10 lightning per second
  int _maxLightingIntensity = 0;

  @override
  void didUpdateWidget(covariant final _WeatherOverlayBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.weather != widget.weather) {
      _currentWeather = widget.weather;
      _restartWeather();
    }
  }

  void _restartWeather() {
    switch (_currentWeather.windScale) {
      case WindScale.calm:
        _maxTargetOpacity = 0.0;
        _maxLightingIntensity = 0;
      case WindScale.lightAir:
        _maxTargetOpacity = 0.03;
        _maxLightingIntensity = 0;
      case WindScale.lightBreeze:
        _maxTargetOpacity = 0.06;
        _maxLightingIntensity = 0;
      case WindScale.gentleBreeze:
        _maxTargetOpacity = 0.1;
        _maxLightingIntensity = 0;
      case WindScale.moderateBreeze:
        _maxTargetOpacity = 0.2;
        _maxLightingIntensity = 0;
      case WindScale.freshBreeze:
        _maxTargetOpacity = 0.4;
        _maxLightingIntensity = 1;
      case WindScale.strongBreeze:
        _maxTargetOpacity = 0.5;
        _maxLightingIntensity = 1;
      case WindScale.highWind:
        _maxTargetOpacity = 0.6;
        _maxLightingIntensity = 2;
      case WindScale.gale:
        _maxTargetOpacity = 0.7;
        _maxLightingIntensity = 3;
      case WindScale.severeGale:
        _maxTargetOpacity = 0.8;
        _maxLightingIntensity = 4;
      case WindScale.storm:
        _maxTargetOpacity = 0.83;
        _maxLightingIntensity = 5;
      case WindScale.violentStorm:
        _maxTargetOpacity = 0.85;
        _maxLightingIntensity = 7;
      case WindScale.hurricane:
        _maxTargetOpacity = 0.9;
        _maxLightingIntensity = 10;
    }
  }

  @override
  Widget build(final BuildContext context) {
    final color = const Color.fromARGB(
      255,
      1,
      20,
      17,
    ).withOpacity(_maxTargetOpacity);
    return const IgnorePointer(
      child: Stack(
        fit: StackFit.expand,
        children: [
          SizedBox(),
          // AnimatedContainer(
          //   duration: 1800.milliseconds,
          //   decoration: BoxDecoration(
          //     color: Colors.amber[200]!.withOpacity(0.1),
          //   ),
          // ),
          // AnimatedContainer(
          //   duration: 1500.milliseconds,
          //   decoration: BoxDecoration(color: color),
          // ),
        ],
      ),
    );
  }
}
