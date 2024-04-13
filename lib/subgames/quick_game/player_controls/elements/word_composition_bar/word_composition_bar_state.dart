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

@freezed
class WordCompositionCubitState with _$WordCompositionCubitState {
  const factory WordCompositionCubitState({
    @Default(true) final bool isCardVisible,
  }) = _WordCompositionCubitState;
}

class WordCompositionCubit extends Cubit<WordCompositionCubitState> {
  WordCompositionCubit({
    required this.diDto,
  })  : wordController = WordFieldController(
          currentWord: diDto.levelBloc.state.currentWord,
        ),
        super(const WordCompositionCubitState()) {
    onLoad();
  }
  late final _tutorialEventsListener = WordCompositionTutorialEventListener(
    read: diDto.read,
    onRequestWordFieldFocus: onRequestTextFocus,
  );
  String _latestWord = '';
  StreamSubscription<LevelBlocState>? _levelBlocSubscription;
  final _wordUpdatesController = StreamController<CurrentWordModel>();
  final WordCompositionStateDiDto diDto;

  void onLoad() {
    _latestWord = diDto.levelBloc.state.latestWord;
    _levelBlocSubscription =
        diDto.levelBloc.stream.distinct().listen((final newState) {
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
    diDto.tutorialBloc.notifier.addListener(_tutorialEventsListener);
    unawaited(
      _wordUpdatesController.stream
          .sampleTime(
            const Duration(milliseconds: 150),
          )
          .forEach(_changeFullWord),
    );
  }

  final wordFocusNode = FocusNode();
  final WordFieldController wordController;
  void onInvestToResearchSelected(final EnergyMultiplierType multiplier) {
    _selectMultiplier(multiplier);
    _onToEndTurn(EnergyApplicationType.researchingTechnology);
  }

  void _selectMultiplier(final EnergyMultiplierType multiplier) =>
      diDto.levelBloc.onLevelPlayerSelectActionMultiplier(
        LevelBlocEventSelectActionMultiplier(multiplier: multiplier),
      );

  void onPowerSelected(final EnergyMultiplierType multiplier) {
    _selectMultiplier(multiplier);
    _onToEndTurn(EnergyApplicationType.refueling);
  }

  void onToSelectActionPhase() {
    diDto.levelBloc.onAcceptNewWord();
  }

  void changeCardVisibility() {
    emit(state.copyWith(isCardVisible: !state.isCardVisible));
  }

  void _onToEndTurn(final EnergyApplicationType energyApplicationType) {
    diDto.levelBloc.onLevelPlayerEndTurnAction(energyApplicationType);
    onRequestTextFocus();
  }

  void onAddWordToDictionary() {
    diDto.levelBloc
        .onAddNewWordToDictionary(const LevelBlocEventAddNewWordToDictionary());
  }

  void onRequestTextFocus() {
    WidgetsBinding.instance.addPostFrameCallback((final _) {
      wordFocusNode.requestFocus();
    });
  }

  void _onPartChanged() =>
      _wordUpdatesController.add(wordController.currentWord);

  void _changeFullWord(final CurrentWordModel word) {
    final event = LevelBlocEventChangeCurrentWord(word: word);
    diDto.levelBloc.onChangeCurrentWord(event);
    final tutorialEvent = TutorialUiActionEvent(
      action: TutorialCompleteAction.onEdit,
      stringValue: event.word.fullWord,
      key: TutorialUiItem.wordField,
    );
    diDto.tutorialBloc.onTutorialUiAction(tutorialEvent);
  }

  void onUnblockIndex(final int index) {
    diDto.levelBloc.onUnblockIndex(index: index);
  }

  @override
  Future<void> close() async {
    diDto.tutorialBloc.notifier.removeListener(_tutorialEventsListener);
    wordController
      ..removeListener(_onPartChanged)
      ..dispose();
    await _wordUpdatesController.close();
    await _levelBlocSubscription?.cancel();
    wordFocusNode.dispose();
    return super.close();
  }
}
