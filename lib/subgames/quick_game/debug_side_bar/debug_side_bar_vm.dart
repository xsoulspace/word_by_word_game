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
  PlayerCharacterModel get _character =>
      dto.levelPlayersBloc.state.playerCharacter;

  final UiDebugSideBarCubitDto dto;
  double get volume => _character.balloonPowers.volume;
  void onVolumeChange(final String? value) {
    changePowers(
      _character.balloonPowers.copyWith(
        volume: double.tryParse(value ?? '') ?? 0,
      ),
    );
  }

  double get power => _character.balloonPowers.power;
  void onPowerChange(final String? value) {
    changePowers(
      _character.balloonPowers.copyWith(
        power: double.tryParse(value ?? '') ?? 0,
      ),
    );
  }

  double get maxVolume => _character.balloonParams.maxVolume;
  void onMaxVolumeChange(final String? value) {
    changeParams(
      _character.balloonParams.copyWith(
        maxVolume: double.tryParse(value ?? '') ?? 0,
      ),
    );
  }

  double get maxPower => _character.balloonParams.maxPower;
  void onMaxPowerChange(final String? value) {
    changeParams(
      _character.balloonParams.copyWith(
        maxPower: double.tryParse(value ?? '') ?? 0,
      ),
    );
  }

  double get powerUsage => _character.balloonParams.powerUsage;
  void onPowerUsageChange(final String? value) {
    changeParams(
      _character.balloonParams.copyWith(
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
    dto.levelPlayersBloc.onChangeCharacter(
      _character.copyWith(balloonPowers: balloonPowers),
    );
  }

  void changeParams(final BalloonLiftParamsModel balloonParams) {
    dto.levelPlayersBloc.onChangeCharacter(
      _character.copyWith(balloonParams: balloonParams),
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
