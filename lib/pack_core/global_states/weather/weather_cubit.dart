import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';

part 'weather_cubit.freezed.dart';

@freezed
class WeatherCubitState with _$WeatherCubitState {
  const factory WeatherCubitState({
    /// idea that current weather always first.
    /// With weather completed, [weathers] first element should be removed
    @Default([]) final List<WeatherModel> weathers,
    @Default(WindModel.zero) final WindModel wind,
  }) = _WeatherCubitState;
  const WeatherCubitState._();
  WeatherModel get weather =>
      weathers.isEmpty ? WeatherModel.initial : weathers.first;
}

class WeatherCubitDto {
  WeatherCubitDto({
    required final BuildContext context,
  })  : mechanics = context.read(),
        statesStatusesCubit = context.read();
  final StatesStatusesCubit statesStatusesCubit;
  final MechanicsCollection mechanics;
}

class WeatherCubit extends Cubit<WeatherCubitState> {
  WeatherCubit({
    required this.dto,
  }) : super(const WeatherCubitState());
  final WeatherCubitDto dto;
  WeatherMechanics get mechanics => dto.mechanics.weather;
  void onConsumeTickEvent() {
    _runWeatherTick();
  }

  /// Call this method on game.update
  void _runWeatherTick() {
    final oldWeather = state.weather;
    final (:weather, :isCompleted) = oldWeather.decreaseDuration();
    if (isCompleted) {
      if (state.weathers.length == 1) {
        _generateWeather();
        _generateWindForce();
      } else {
        final updatedWeathers = [...state.weathers]..removeAt(0);
        print({'weather switched to': updatedWeathers.first});
        emit(state.copyWith(weathers: updatedWeathers));
        _generateWindForce();
      }
    } else {
      final updatedWeathers = [...state.weathers]
        ..removeAt(0)
        ..insert(0, weather);
      emit(state.copyWith(weathers: updatedWeathers));
    }
  }

  void regenerateWeather() {
    _generateWeather();
    print({'weathers generated': state.weathers});
  }

  void loadWeather({
    final List<WeatherModel> weathers = const [],
    final WindModel wind = WindModel.zero,
  }) {
    if (weathers.isEmpty) {
      _generateWeather();
    } else {
      emit(state.copyWith(weathers: weathers, wind: wind));
    }
    print({'weathers loaded': state.weathers});
  }

  void _generateWeather() {
    final newWeathers = mechanics.generateWeather();
    emit(state.copyWith(weathers: newWeathers));
    _generateWindForce();
    print({'weathers generated': state.weathers});
  }

  int _previousHeightInTiles = 0;
  Offset? _currentWindOffsetCache;

  Offset generateWindForce({
    required final int heightInTiles,
  }) {
    int heightDelta = _previousHeightInTiles - heightInTiles;
    if (heightDelta < 0) heightDelta *= -1;

    /// change wind if there is a change
    /// in height tiles more then 2
    if (heightDelta > 2) {
      _previousHeightInTiles = heightInTiles;
      _generateWindForce();
    }
    return _currentWindOffsetCache ??= state.wind.force.toOffset();
  }

  void _generateWindForce() {
    final windForce = dto.mechanics.weather.getWindByWeather(
      weather: state.weather,
      heightInTiles: _previousHeightInTiles,
    );
    emit(state.copyWith(wind: windForce));
    _currentWindOffsetCache = null;
  }
}
