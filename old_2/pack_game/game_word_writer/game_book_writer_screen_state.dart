part of pack_game;

GameWordWriterScreenState useGameWordWriterScreenState({
  required final WrittenWordsNotifier writtenWordsNotifier,
  required final GlobalNavigatorController navigatorController,
}) =>
    use(
      LifeHook(
        debugLabel: 'GameWordWriterScreenState',
        state: GameWordWriterScreenState(
          writtenWordsNotifier: writtenWordsNotifier,
          navigatorController: navigatorController,
        ),
      ),
    );

class GameWordWriterScreenState extends LifeState {
  GameWordWriterScreenState({
    required this.writtenWordsNotifier,
    required this.navigatorController,
  });
  final WrittenWordsNotifier writtenWordsNotifier;
  late final leftPartController = TextEditingController(
    text: writtenWordsNotifier.wordWriterState.leftPartOfWord,
  );
  late final rightPartController = TextEditingController(
    text: writtenWordsNotifier.wordWriterState.rightPartOfWord,
  );
  late final middlePart = ValueNotifier(
    writtenWordsNotifier.wordWriterState.middlePartOfWord,
  );
  final GlobalNavigatorController navigatorController;
  final _wordUpdatesController = StreamController<bool>();
  late final fullWordNotifier = ValueNotifier<String>(
    writtenWordsNotifier.wordWriterState.fullWord,
  );

  @override
  void initState() {
    leftPartController.addListener(onPartChanged);
    middlePart.addListener(onPartChanged);
    rightPartController.addListener(onPartChanged);
    _wordUpdatesController.stream
        .sampleTime(
          const Duration(milliseconds: 300),
        )
        .forEach(changeFullWord);
  }

  @override
  void dispose() {
    leftPartController
      ..removeListener(onPartChanged)
      ..dispose();
    rightPartController
      ..removeListener(onPartChanged)
      ..dispose();
    middlePart
      ..removeListener(onPartChanged)
      ..dispose();
    _wordUpdatesController.close();
    fullWordNotifier.dispose();
  }

  @useResult
  String getFullWord() => '${leftPartController.text}${middlePart.value}'
      '${rightPartController.text}';
  // ignore: avoid_positional_boolean_parameters
  Future<void> changeFullWord([final bool update = false]) async {
    final newFullWord = getFullWord();
    if (newFullWord == fullWordNotifier.value) return;
    fullWordNotifier.value = newFullWord;

    await writtenWordsNotifier.setWordWriterState(
      writtenWordsNotifier.wordWriterState.copyWith(
        leftPartOfWord: leftPartController.text,
        rightPartOfWord: rightPartController.text,
        middlePartOfWord: middlePart.value,
      ),
    );
  }

  void onPartChanged() => _wordUpdatesController.add(true);

  void onDecreaseLeftPart() {}
  void onDecreaseRightPart() {}

  void onAddWord() {
    navigatorController.goBookShelf();
    // final notificationsModel =
    //     Provider.of<NotificationsModel>(context, listen: false);
    // final wordsModel = Provider.of<WordsModel>(context, listen: false);
    // final playersModel = Provider.of<PlayersModel>(context, listen: false);
    // final localeModel = Provider.of<LocaleModel>(context, listen: false);
    // final storageModel = Provider.of<StorageModel>(context, listen: false);
    // final gameNotification = await wordsModel.addNewWordForPLayer(
    //   player: playersModel.currentPlayer,
    //   locale: localeModel.locale,
    // );
    // if (gameNotification.status == GameNotificationStatuses.done) {
    //   await storageModel.saveWordsModel();
    //   _leftTextController.text = wordsModel.newWordBeginning;
    //   _rightTextController.text = wordsModel.newWordEnding;
    //   if (playersModel.isNotOnePlayerPlaying) {
    //     playersModel.nextPlayer();
    //     await storageModel.savePlayersModel();
    //   }
    //   // resetting notification state
    //   notificationsModel.gameNotification = null;
    // } else {
    //   notificationsModel.gameNotification = gameNotification;
    // }
  }
}
