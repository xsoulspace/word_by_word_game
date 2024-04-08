import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';

part 'game_constants_cubit.freezed.dart';

@freezed
class GameConstantsCubitState with _$GameConstantsCubitState {
  const factory GameConstantsCubitState({
    @Default(ForcesConstantsModel.initial) final ForcesConstantsModel forces,
  }) = _GameConstantsCubitState;
  static const initial = GameConstantsCubitState();
}

class GameConstantsCubitDto {
  GameConstantsCubitDto();
}

class GameConstantsCubit extends Cubit<GameConstantsCubitState> {
  // ignore: avoid_unused_constructor_parameters
  GameConstantsCubit(final BuildContext context)
      : dto = GameConstantsCubitDto(),
        super(GameConstantsCubitState.initial);
  final GameConstantsCubitDto dto;

  void changeState(final GameConstantsCubitState newState) {
    emit(newState);
  }
}
