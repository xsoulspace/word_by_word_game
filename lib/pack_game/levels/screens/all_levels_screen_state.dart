part of 'all_levels_screen.dart';

class _AllLevelsScreenStateDiDto {
  _AllLevelsScreenStateDiDto.use(final Locator read)
      : appRouterController = AppRouterController.use(read);
  final AppRouterController appRouterController;
}

_AllLevelsScreenState _useAllLevelsScreenState({
  required final Locator read,
}) =>
    use(
      LifeHook(
        debugLabel: '_AllLevelsScreenState',
        state: _AllLevelsScreenState(
          diDto: _AllLevelsScreenStateDiDto.use(read),
        ),
      ),
    );

class _AllLevelsScreenState extends LifeState {
  _AllLevelsScreenState({
    required this.diDto,
  });
  final _AllLevelsScreenStateDiDto diDto;

  void onOpenLevelOptions(final TemplateLevelModel level) {
    diDto.appRouterController.toLevelOptions(id: level.id);
  }
}
