part of 'word_composition_row.dart';

class _WordCompositionStateDiDto {
  _WordCompositionStateDiDto.use(final Locator read)
      : levelBloc = read(),
        mechanics = read(),
        appRouterController = read(),
        globalGameBloc = read();

  final LevelBloc levelBloc;
  final MechanicsCollection mechanics;
  final AppRouterController appRouterController;
  final GlobalGameBloc globalGameBloc;
}

_WordCompositionState _useWordCompositionState({
  required final Locator read,
}) =>
    use(
      LifeHook(
        debugLabel: '_WordCompositionState',
        state: _WordCompositionState(
          diDto: _WordCompositionStateDiDto.use(read),
        ),
      ),
    );

class _WordCompositionState extends LifeState {
  _WordCompositionState({
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
    _wordUpdatesController.stream
        .sampleTime(
          const Duration(milliseconds: 300),
        )
        .forEach(_changeFullWord);
  }

  final leftWordKeyFocus = FocusNode();
  final leftWordFocus = FocusNode();
  final rightWordKeyFocus = FocusNode();
  final rightWordFocus = FocusNode();

  void onFire() {
    onRequestLeftTextFocus();
    diDto.levelBloc.add(const AcceptNewWordEvent());
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
  }

  void onDecreaseLeftPart() {
    diDto.levelBloc.add(
      const DecreaseMiddlePartEvent(
        type: DecreaseMiddlePart.leftLetter,
      ),
    );
  }

  void onDecreaseRightPart() {
    diDto.levelBloc.add(
      const DecreaseMiddlePartEvent(
        type: DecreaseMiddlePart.rightLetter,
      ),
    );
  }

  void onResetMiddlePart() {
    diDto.levelBloc.add(
      const DecreaseMiddlePartEvent(
        type: DecreaseMiddlePart.allLetters,
      ),
    );
  }

  void onLatestWordChanged() {
    leftPartController.clear();
    rightPartController.clear();
  }

  @override
  void dispose() {
    leftPartController
      ..removeListener(_onPartChanged)
      ..dispose();
    rightPartController
      ..removeListener(_onPartChanged)
      ..dispose();
    _wordUpdatesController.close();
    leftWordKeyFocus.dispose();
    rightWordKeyFocus.dispose();
    rightWordFocus.dispose();
    leftWordFocus.dispose();
    super.dispose();
  }
}
