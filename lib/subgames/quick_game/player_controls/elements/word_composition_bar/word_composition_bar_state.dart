part of 'word_composition_bar.dart';

class WordCompositionStateDiDto {
  WordCompositionStateDiDto.use(final Locator read)
      : levelBloc = read(),
        tutorialBloc = read(),
        mechanics = read(),
        appRouterController = read(),
        globalGameBloc = read(),
        dialogController = read();

  final LevelBloc levelBloc;
  final TutorialBloc tutorialBloc;
  final MechanicsCollection mechanics;
  final AppRouterController appRouterController;
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

  void onSelectActionMultiplier(final EnergyMultiplierType multiplier) {
    diDto.levelBloc.onLevelPlayerSelectActionMultiplier(
      LevelBlocEventSelectActionMultiplier(
        multiplier: multiplier,
      ),
    );
    onToEndTurn();
  }

  void onToSelectActionPhase() {
    diDto.levelBloc.onAcceptNewWord();
  }

  void changeCardVisibility() {
    emit(state.copyWith(isCardVisible: !state.isCardVisible));
  }

  void onToEndTurn() {
    diDto.levelBloc.onLevelPlayerEndTurnAction(const LevelBlocEventEndTurn());
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
      key: TutorialUiItem.enterWordRight,
    );
    diDto.tutorialBloc.add(tutorialEvent);
  }

  void onUnblockIndex(final int index) {
    diDto.levelBloc.onUnblockIndex(index: index);
  }

  @override
  Future<void> close() async {
    wordController
      ..removeListener(_onPartChanged)
      ..dispose();
    await _wordUpdatesController.close();
    await _levelBlocSubscription?.cancel();
    wordFocusNode.dispose();
    return super.close();
  }
}
