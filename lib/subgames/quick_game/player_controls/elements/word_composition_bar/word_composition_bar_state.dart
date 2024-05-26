part of 'word_composition_bar.dart';

class WordCompositionTutorialEventListenerDiDto {
  WordCompositionTutorialEventListenerDiDto.use(final Locator read)
      : mechanics = read(),
        tutorialBloc = read();
  final MechanicsCollection mechanics;
  final TutorialBloc tutorialBloc;
}

class WordCompositionTutorialEventListener extends TutorialEventListener {
  WordCompositionTutorialEventListener({
    required final Locator read,
    required this.onRequestWordFieldFocus,
  }) : diDto = WordCompositionTutorialEventListenerDiDto.use(read);
  final WordCompositionTutorialEventListenerDiDto diDto;
  final VoidCallback onRequestWordFieldFocus;

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
        case TutorialGameEffectName.requestWordFieldFocus:
          onRequestWordFieldFocus();
        // ignore: no_default_cases
        default:
      }
    }
  }
}

class WordCompositionStateDiDto {
  WordCompositionStateDiDto.use(this.read)
      : levelBloc = read(),
        tutorialBloc = read(),
        mechanics = read(),
        globalGameBloc = read(),
        dialogController = read();
  final Locator read;
  final LevelBloc levelBloc;
  final TutorialBloc tutorialBloc;
  final MechanicsCollection mechanics;
  final GlobalGameBloc globalGameBloc;
  final DialogController dialogController;
}

class WordCompositionCubit extends ChangeNotifier {
  WordCompositionCubit(final BuildContext context)
      : dto = WordCompositionStateDiDto.use(context.read) {
    wordController = WordFieldController(
      currentWord: dto.levelBloc.state.currentWord,
    );
    onLoad();
  }
  late final _tutorialEventsListener = WordCompositionTutorialEventListener(
    read: dto.read,
    onRequestWordFieldFocus: onRequestTextFocus,
  );
  String _latestWord = '';
  StreamSubscription<LevelBlocState>? _levelBlocSubscription;
  final _wordUpdatesController = StreamController<CurrentWordModel>();
  final WordCompositionStateDiDto dto;

  void onLoad() {
    _latestWord = dto.levelBloc.state.latestWord;
    _levelBlocSubscription =
        dto.levelBloc.stream.distinct().listen((final newState) {
      if (_latestWord != newState.latestWord) {
        _latestWord = newState.latestWord;
        wordController.currentWord = newState.currentWord;
      } else if (wordController.currentWord.inactiveIndexes !=
          newState.currentWord.inactiveIndexes) {
        wordController.changeInactiveIndexes(
          inactiveIndexes: newState.currentWord.inactiveIndexes,
        );
      }
    });
    wordController.addListener(_onPartChanged);
    dto.tutorialBloc.notifier.addListener(_tutorialEventsListener);
    unawaited(
      _wordUpdatesController.stream
          .sampleTime(
            const Duration(milliseconds: 150),
          )
          .forEach(_changeFullWord),
    );
    onRequestTextFocus();
  }

  final wordFocusNode = FocusNode();
  late final WordFieldController wordController;
  void _selectMultiplier(final EnergyMultiplierType multiplier) =>
      dto.levelBloc.onLevelPlayerSelectActionMultiplier(
        LevelBlocEventSelectActionMultiplier(multiplier: multiplier),
      );
  void onInvestToResearchSelected(final EnergyMultiplierType multiplier) {
    _selectMultiplier(multiplier);
    _onToEndTurn(EnergyApplicationType.researchingTechnology);
  }

  void onCrystalMoved(final EnergyMultiplierType multiplier) {
    _selectMultiplier(multiplier);
    _onToEndTurn(EnergyApplicationType.crystalMove);
  }

  void onPowerSelected(final EnergyMultiplierType multiplier) {
    _selectMultiplier(multiplier);
    _onToEndTurn(EnergyApplicationType.refueling);
  }

  Future<void> onToSelectActionPhase() async => dto.levelBloc.onAcceptNewWord();

  void _onToEndTurn(final EnergyApplicationType energyApplicationType) {
    dto.levelBloc.onLevelPlayerEndTurnAction(energyApplicationType);
    onRequestTextFocus();
  }

  Future<void> onAddWordToDictionary() async => dto.levelBloc
      .onAddNewWordToDictionary(const LevelBlocEventAddNewWordToDictionary());

  void onRequestTextFocus() {
    WidgetsBinding.instance.addPostFrameCallback((final _) {
      wordFocusNode.requestFocus();
    });
  }

  void _onPartChanged() =>
      _wordUpdatesController.add(wordController.currentWord);

  void _changeFullWord(final CurrentWordModel word) {
    final event = LevelBlocEventChangeCurrentWord(word: word);
    dto.levelBloc.onChangeCurrentWord(event);
    final tutorialEvent = TutorialUiActionEvent(
      action: TutorialCompleteAction.onEdit,
      stringValue: event.word.fullWord,
      key: TutorialUiItem.wordField,
    );
    dto.tutorialBloc.onTutorialUiAction(tutorialEvent);
  }

  void onUnblockIndex(final int index) {
    dto.levelBloc.onUnblockIndex(index: index);
  }

  @override
  void dispose() {
    dto.tutorialBloc.notifier.removeListener(_tutorialEventsListener);
    wordController
      ..removeListener(_onPartChanged)
      ..dispose();
    unawaited(_wordUpdatesController.close());
    unawaited(_levelBlocSubscription?.cancel());
    wordFocusNode.dispose();
    return super.dispose();
  }
}

@freezed
class BottomActionsNotifierState with _$BottomActionsNotifierState {
  const factory BottomActionsNotifierState({
    @Default(true) final bool isCardVisible,
  }) = _BottomActionsNotifierState;
}

class BottomActionsNotifier extends ValueNotifier<BottomActionsNotifierState> {
  // ignore: avoid_unused_constructor_parameters
  BottomActionsNotifier(final BuildContext context)
      : super(const BottomActionsNotifierState());

  void changeCardVisiblity() {
    value = value.copyWith(isCardVisible: !value.isCardVisible);
  }
}
