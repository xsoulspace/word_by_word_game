part of 'word_composition_bar.dart';

class _WordCompositionStateDiDto {
  _WordCompositionStateDiDto.use(final Locator read)
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

WordCompositionState useWordCompositionState({
  required final Locator read,
}) =>
    use(
      LifeHook(
        debugLabel: '_WordCompositionState',
        state: WordCompositionState(
          diDto: _WordCompositionStateDiDto.use(read),
        ),
      ),
    );

class WordCompositionState extends LifeState {
  WordCompositionState({
    required this.diDto,
  })  : leftPartController = TextEditingController(
          text: diDto.levelBloc.getLiveState().currentWord.leftPart,
        ),
        rightPartController = TextEditingController(
          text: diDto.levelBloc.getLiveState().currentWord.rightPart,
        );
  final TextEditingController leftPartController;
  final TextEditingController rightPartController;

  final _wordUpdatesController = StreamController<CurrentWordModel>();
  final _WordCompositionStateDiDto diDto;

  @override
  void initState() {
    super.initState();
    leftPartController.addListener(_onPartChanged);
    rightPartController.addListener(_onPartChanged);
    unawaited(
      _wordUpdatesController.stream
          .sampleTime(
            const Duration(milliseconds: 300),
          )
          .forEach(_changeFullWord),
    );
  }

  final leftWordKeyFocus = FocusNode();
  final leftWordFocus = FocusNode();
  final rightWordKeyFocus = FocusNode();
  final rightWordFocus = FocusNode();

  void onSelectActionMultiplier(final EnergyMultiplierType multiplier) {
    diDto.levelBloc.add(
      LevelPlayerSelectActionMultiplierEvent(
        multiplier: multiplier,
      ),
    );
    onToEndTurn();
  }

  void onToSelectActionPhase() {
    diDto.levelBloc.add(const AcceptNewWordEvent());
  }

  void onToEndTurn() {
    diDto.levelBloc.add(const LevelPlayerEndTurnActionEvent());
    onRequestLeftTextFocus();
  }

  void onOpenSuggestionDialog() {
    diDto.dialogController.showLevelWordSuggestionDialog();
  }

  void onPause() {
    diDto.mechanics.worldTime.pause();
    diDto.globalGameBloc.add(const SaveCurrentLevelEvent());
    final id = diDto.levelBloc.getLiveState().id;
    diDto.appRouterController.toPause(id: id);
  }

  void onAddWordToDictionary() {
    diDto.levelBloc.add(const AddNewWordToDictionaryEvent());
  }

  void onRequestLeftTextFocus() {
    WidgetsBinding.instance.addPostFrameCallback((final _) {
      leftWordFocus.requestFocus();
    });
  }

  void onRequestRightTextFocus() {
    WidgetsBinding.instance.addPostFrameCallback((final _) {
      rightWordFocus.requestFocus();
    });
  }

  void _onPartChanged() {
    final newWord = diDto.mechanics.wordComposition.applyPartsChanges(
      word: CurrentWordModel(
        leftPart: leftPartController.text,
        middlePart: diDto.levelBloc.getLiveState().currentWord.middlePart,
        rightPart: rightPartController.text,
      ),
    );

    _wordUpdatesController.add(newWord);
  }

  void _changeFullWord(final CurrentWordModel word) {
    final event = ChangeCurrentWordEvent(word: word);
    diDto.levelBloc.add(event);
    final tutorialEvent = TutorialUiActionEvent(
      action: TutorialCompleteAction.onEdit,
      stringValue: event.word.fullWord,
      key: TutorialUiItem.enterWordRight,
    );
    diDto.tutorialBloc.add(tutorialEvent);
  }

  void onDecreaseMiddlePart(final int index) {
    diDto.levelBloc.add(DecreaseMiddlePartEvent(index: index));
  }

  void onLatestWordChanged() {
    leftPartController.clear();
    rightPartController.clear();
  }

  @override
  Future<void> dispose() async {
    leftPartController
      ..removeListener(_onPartChanged)
      ..dispose();
    rightPartController
      ..removeListener(_onPartChanged)
      ..dispose();
    await _wordUpdatesController.close();
    leftWordKeyFocus.dispose();
    rightWordKeyFocus.dispose();
    rightWordFocus.dispose();
    leftWordFocus.dispose();
    super.dispose();
  }
}
