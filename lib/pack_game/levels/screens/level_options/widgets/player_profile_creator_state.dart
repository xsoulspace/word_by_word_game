part of 'player_profile_creator.dart';

class PlayerProfileCreatorDiDto {
  // ignore: avoid_unused_constructor_parameters
  PlayerProfileCreatorDiDto.use(final Locator read);
}

PlayerProfileCreatorState _usePlayerProfileCreatorState({
  required final Locator read,
}) =>
    use(
      LifeHook(
        debugLabel: 'PlayerProfileCreatorState',
        state: PlayerProfileCreatorState(
          diDto: PlayerProfileCreatorDiDto.use(read),
        ),
      ),
    );

class PlayerProfileCreatorState extends LifeState {
  PlayerProfileCreatorState({
    required this.diDto,
  });

  final PlayerProfileCreatorDiDto diDto;
  Color _color = Colors.white;
  Color get color => _color;
  set color(final Color color) {
    _color = color;
    setState();
  }
}
