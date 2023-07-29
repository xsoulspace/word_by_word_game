part of 'debug_side_bar.dart';

class UiDebugSideBarCubitState {}

class UiDebugSideBarCubitDto {
  UiDebugSideBarCubitDto({
    required final BuildContext context,
  })  : gameConstantsCubit = context.read(),
        levelPlayersBloc = context.read();
  final GameConstantsCubit gameConstantsCubit;
  final LevelPlayersBloc levelPlayersBloc;
}

class UiDebugSideBarCubit extends Cubit<UiDebugSideBarCubitState> {
  UiDebugSideBarCubit({
    required this.dto,
  }) : super(UiDebugSideBarCubitState());
  GameConstantsCubit get gameConstantsCubit => dto.gameConstantsCubit;
  GameConstantsCubitState get _gameConstants => dto.gameConstantsCubit.state;

  final UiDebugSideBarCubitDto dto;
  double get volume => 0;
  void onVolumeChange(final String? value) {}
  double get power => 0;
  void onPowerChange(final String? value) {}
  double get maxVolume => _gameConstants.balloonParams.maxVolume;
  void onMaxVolumeChange(final String? value) {
    changeParams(
      _gameConstants.balloonParams.copyWith(
        maxVolume: double.tryParse(value ?? '') ?? 0,
      ),
    );
  }

  double get maxPower => _gameConstants.balloonParams.maxPower;
  void onMaxPowerChange(final String? value) {
    changeParams(
      _gameConstants.balloonParams.copyWith(
        maxPower: double.tryParse(value ?? '') ?? 0,
      ),
    );
  }

  double get powerUsage => _gameConstants.balloonParams.powerUsage;
  void onPowerUsageChange(final String? value) {
    changeParams(
      _gameConstants.balloonParams.copyWith(
        powerUsage: double.tryParse(value ?? '') ?? 0,
      ),
    );
  }

  double get gravityForce => _gameConstants.forces.gravityForce;
  void onGravityForceChange(final String? value) {
    changeForces(
      _gameConstants.forces.copyWith(
        gravityForce: double.tryParse(value ?? '') ?? 0,
      ),
    );
  }

  double get volumeDecreaseRatio => _gameConstants.forces.volumeDecreaseRatio;
  void onVolumeDecreaseRatioChange(final String? value) {
    changeForces(
      _gameConstants.forces.copyWith(
        volumeDecreaseRatio: double.tryParse(value ?? '') ?? 0,
      ),
    );
  }

  double get volumeIncreaseRatio => _gameConstants.forces.volumeIncreaseRatio;
  void onVolumeIncreaseRatioChange(final String? value) {
    changeForces(
      _gameConstants.forces.copyWith(
        volumeIncreaseRatio: double.tryParse(value ?? '') ?? 0,
      ),
    );
  }

  double get volumeToLiftRatio => _gameConstants.forces.volumeToLiftRatio;
  void onVolumeToLiftRatioChange(final String? value) {
    changeForces(
      _gameConstants.forces.copyWith(
        volumeToLiftRatio: double.tryParse(value ?? '') ?? 0,
      ),
    );
  }

  void changePowers(final BalloonLiftPowersModel balloonPowers) {
    gameConstantsCubit.changeState(
      gameConstantsCubit.state.copyWith(
        balloonPowers: balloonPowers,
      ),
    );
  }

  void changeParams(final BalloonLiftParamsModel balloonParams) {
    gameConstantsCubit.changeState(
      gameConstantsCubit.state.copyWith(
        balloonParams: balloonParams,
      ),
    );
  }

  void changeForces(final ForcesConstantsModel forces) {
    gameConstantsCubit.changeState(
      gameConstantsCubit.state.copyWith(
        forces: forces,
      ),
    );
  }
}
