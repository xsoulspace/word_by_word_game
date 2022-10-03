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
  final nameController = TextEditingController();
  final PlayerProfileCreatorDiDto diDto;
  Color _color = Colors.teal;
  Color get color => _color;
  set color(final Color color) {
    _color = color;
    setState();
  }

  PlayerProfileModel? onCreateProfile() {
    if (nameController.text.isEmpty) return null;
    final newPlayer = PlayerProfileModel.create(
      name: nameController.text,
      colorValue: color.value,
    );
    nameController.text = '';
    return newPlayer;
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }
}
