part of 'word_composition_row.dart';

class _WordCompositionStateDiDto {
  _WordCompositionStateDiDto.use(final Locator read)
      : levelBloc = read(),
        mechanics = read();

  final LevelBloc levelBloc;
  final MechanicsCollection mechanics;
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
          text: diDto.levelBloc.state.currentWord.leftPart,
        ),
        rightPartController = TextEditingController(
          text: diDto.levelBloc.state.currentWord.rightPart,
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

  void _onPartChanged() {
    final newWord = diDto.mechanics.wordComposition.applyPartsChanges(
      word: CurrentWordModel(
        leftPart: leftPartController.text,
        middlePart: diDto.levelBloc.state.currentWord.middlePart,
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
    // TODO(arenukvern): description
    throw UnimplementedError();
  }

  void onDecreaseRightPart() {
    // TODO(arenukvern): description
    throw UnimplementedError();
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
    super.dispose();
  }
}
