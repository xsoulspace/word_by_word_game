import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';

class GameTutorialEventListenerDiDto {
  GameTutorialEventListenerDiDto.use(final Locator read)
    : mechanics = read(),
      tutorialBloc = read();
  final MechanicsCollection mechanics;
  final TutorialBloc tutorialBloc;
}

class GameTutorialEventListener extends TutorialEventListener {
  GameTutorialEventListener({required final Locator read})
    : diDto = GameTutorialEventListenerDiDto.use(read);
  final GameTutorialEventListenerDiDto diDto;

  @override
  Future<void> onEventPreEffects(final TutorialEventModel event) {
    _resolveEffects(event.gamePreEffects);
    return super.onEventPreEffects(event);
  }

  @override
  Future<void> onEventPostEffects(final TutorialEventModel event) {
    _resolveEffects(event.gamePostEffects);
    return super.onEventPostEffects(event);
  }

  void _resolveEffects(final List<TutorialGameEffectModel> effects) {
    for (final effect in effects) {
      switch (effect.name) {
        case TutorialGameEffectName.completeCurrentTutorial:
          diDto.tutorialBloc.onCompleteTutorial(const CompleteTutorialEvent());
        case TutorialGameEffectName.pauseGame:
          diDto.mechanics.worldTime.pause();
        case TutorialGameEffectName.resumeGame:
          diDto.mechanics.worldTime.resume();
        case TutorialGameEffectName.requestWordFieldFocus:
      }
    }
  }
}
