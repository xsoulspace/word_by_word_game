// ignore_for_file: avoid_unused_constructor_parameters

part of 'settings_screen.dart';

class _SettingsScreenDiDto {
  _SettingsScreenDiDto.use(final Locator read);
}

_SettingsScreenState _useSettingsScreenState({required final Locator read}) =>
    use(
      LifeHook(
        debugLabel: '_SettingsScreenState',
        state: _SettingsScreenState(diDto: _SettingsScreenDiDto.use(read)),
      ),
    );

class _SettingsScreenState extends LifeState {
  _SettingsScreenState({
    required this.diDto,
  });

  final _SettingsScreenDiDto diDto;
}
