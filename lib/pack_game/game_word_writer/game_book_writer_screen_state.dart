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

class GameWordWriterScreenState implements LifeState {
  GameWordWriterScreenState({
    required this.writtenWordsNotifier,
    required this.navigatorController,
  });
  final WrittenWordsNotifier writtenWordsNotifier;
  @override
  ValueChanged<VoidCallback>? setState;
  final leftPartController = TextEditingController();
  final rightPartController = TextEditingController();
  final middlePart = ValueNotifier('');
  final GlobalNavigatorController navigatorController;
  @override
  void initState() {
    leftPartController.addListener(onPartChanged);
    middlePart.addListener(onPartChanged);
    rightPartController.addListener(onPartChanged);
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
  }

  Future<void> onPartChanged() async {
    await writtenWordsNotifier.setWordWriterState(
      writtenWordsNotifier.wordWriterState.copyWith(
        leftPartOfWord: leftPartController.text,
        rightPartOfWord: rightPartController.text,
        middlePartOfWord: middlePart.value,
      ),
    );
  }

  String get fullWord =>
      '${leftPartController.text}${rightPartController.text}';
  int get lettersCount => fullWord.length;

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
