import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wbw_core/wbw_core.dart';

part 'game_constants_cubit.freezed.dart';

@freezed
class GameConstantsCubitState with _$GameConstantsCubitState {
  const factory GameConstantsCubitState({
    @Default(ForcesConstantsModel()) final ForcesConstantsModel forces,
    // TODO(arenukvern): move params below to
    @Default(BalloonLiftParamsModel())
    final BalloonLiftParamsModel balloonParams,
    @Default(BalloonLiftPowersModel())
    final BalloonLiftPowersModel balloonPowers,
  }) = _GameConstantsCubitState;
}

class GameConstantsCubitDto {
  GameConstantsCubitDto();
}

class GameConstantsCubit extends Cubit<GameConstantsCubitState> {
  GameConstantsCubit({
    required this.dto,
  }) : super(const GameConstantsCubitState());
  final GameConstantsCubitDto dto;

  void changeState(final GameConstantsCubitState newState) {
    emit(newState);
  }
}
