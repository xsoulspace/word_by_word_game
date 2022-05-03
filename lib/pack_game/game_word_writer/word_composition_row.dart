part of pack_game;

class WordCompositionRow extends StatefulWidget {
  const WordCompositionRow({final Key? key}) : super(key: key);

  @override
  _WordCompositionRowState createState() => _WordCompositionRowState();
}

class _WordCompositionRowState extends State<WordCompositionRow> {
  final TextEditingController _leftTextController = TextEditingController();
  final TextEditingController _rightTextController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.

    _leftTextController.dispose();
    _rightTextController.dispose();
    super.dispose();
  }

  OutlineInputBorder _textFieldOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
    );
  }

  OutlineInputBorder _textFieldFocusOutlineInputBorder() {
    // final playersModel = Provider.of<PlayersModel>(context, listen: false);
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
    );
  }

  Widget _decreaseButton({required final bool isFromBeginning}) {
    // final storageModel = Provider.of<StorageModel>(context, listen: false);
    // final wordsModel = Provider.of<WordsModel>(context, listen: false);
    // final playersModel = Provider.of<PlayersModel>(context, listen: false);
    // final playerColor = playersModel.currentPlayer.playerColor.color;
    return IconButton(
      disabledColor: Colors.grey,
      iconSize: 36,
      // color: playerColor,
      // splashColor: playerColor.withOpacity(0.4),
      // hoverColor: playerColor.withOpacity(0.1),
      // highlightColor: playerColor.withOpacity(0.2),
      icon: const Icon(Icons.remove),
      onPressed: () {},
      // onPressed: wordsModel.isPhraseLimitLeftAvailable
      //     ? () async {
      //         wordsModel.reducePhraseLimit(isFromBeginning: isFromBeginning);
      //         await storageModel.saveWordsModel();
      //       }
      //     : null,
    );
  }

  Future<void> _updateWordsModelPhrases({
    required final String value,
    required final bool isFromBeginning,
  }) async {
    // final wordsModel = Provider.of<WordsModel>(context, listen: false);
    // if (isFromBeginning) {
    //   wordsModel.newWordBeginning = value;
    // } else {
    //   wordsModel.newWordEnding = value;
    // }
    // final storageModel = Provider.of<StorageModel>(context, listen: false);
    // await storageModel.saveWordsModel();
  }

  Widget _lastwordWidget() {
    return const SizedBox();
    // return Flexible(
    //   child: Consumer<WordsModel>(
    //     builder: (final buildContext, final wordsModel, final widget) => Text(
    //       wordsModel.isAtLeastOneWordRecorded
    //           ? '${MainLocalizations.of(context).lastword} ${wordsModel.lastword}'
    //           : '',
    //       textAlign: TextAlign.center,
    //     ),
    //   ),
    // );
  }

  @override
  Widget build(final BuildContext context) {
    // final wordsModel = Provider.of<WordsModel>(context);
    // final playersModel = Provider.of<PlayersModel>(context);
    // if (!_isLeftControllerInitialized &&
    //     wordsModel.newWordBeginning.length > 0) {
    //   _leftTextController.text = wordsModel.newWordBeginning;
    //   _isLeftControllerInitialized = true;
    // }
    // if (!_isRightControllerInitialized && wordsModel.newWordEnding.length > 0) {
    //   _rightTextController.text = wordsModel.newWordEnding;
    //   _isRightControllerInitialized = true;
    // }
    final size = MediaQuery.of(context).size;
    final screenLayout = ScreenLayout.of(context);

    return Material(
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              _lastwordWidget()
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
          ),
          LayoutBuilder(
            builder: (final context, final constraints) {
              if (screenLayout.small) {
                return SizedBox(
                  height: size.height * 0.2,
                  child: Column(
                    children: [
                      // first input
                      _beginnigTextField(),
                      // // letters
                      _decreaseAndPhraseWidget(),
                      // second input
                      _endingTextField()
                    ],
                  ),
                );
              } else {
                return Row(
                  children: [
                    // first input
                    _beginnigTextField(),
                    // // letters
                    _decreaseAndPhraseWidget(),
                    // second input
                    _endingTextField()
                  ],
                );
              }
            },
          ),
          Padding(
            padding: EdgeInsets.only(
              top: screenLayout.small
                  ? 5
                  : screenLayout.medium
                      ? 14
                      : 30,
            ),
            child: Center(
              child: TextButton(
                onPressed: () async => _addNewWord(),
                style: ButtonStyle(
                  // overlayColor: MaterialStateProperty.all<Color>(
                  //   playersModel.currentPlayer.playerColor.color
                  //       .withOpacity(0.05),
                  // ),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.transparent),
                ),
                child: Padding(
                  padding: EdgeInsets.all(
                    screenLayout.small
                        ? 5
                        : screenLayout.medium
                            ? 14
                            : 24,
                  ),
                  // child: Text(
                  //   MainLocalizations.of(context).addNewWord,
                  //   style: TextStyle(
                  //     color: Colors.grey[800],
                  //     fontSize: AppConstraints.isMobile(size.width) ? 14 : 18,
                  //   ),
                  // ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _decreaseAndPhraseWidget() {
    // final wordsModel = Provider.of<WordsModel>(context);
    return Visibility(
      // visible: wordsModel.isAtLeastOneWordRecorded &&
      //     wordsModel.isPhraseFromLastwordNotEmpty,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _decreaseButton(isFromBeginning: true),
                // Consumer<WordsModel>(
                //   builder:
                //       (final buildContext, final wordsModel, final widget) =>
                //           Text(wordsModel.phraseFromLastword),
                // ),
                _decreaseButton(isFromBeginning: false)
              ],
            ),
            // Visibility(
            //   visible: wordsModel.isPhraseLimitLeftAvailable,
            //   child: Center(
            //     child: Consumer<WordsModel>(
            //       builder: (final context, final wordsModel, final child) {
            //         final lettersToRemoveText =
            //             MainLocalizations.of(context).lettersToRemove;
            //         return Text(
            //           '${wordsModel.phraseLimitLettersLeft} $lettersToRemoveText',
            //           style: const TextStyle(fontSize: 10),
            //         );
            //       },
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  Widget _beginnigTextField() {
    // final wordsModel = Provider.of<WordsModel>(context);
    return Visibility(
      // visible: wordsModel.isAtLeastOneWordRecorded &&
      //     wordsModel.isPhraseFromLastwordNotEmpty,
      child: Expanded(
        child: TextField(
          style: const TextStyle(fontSize: 14.0),
          textAlign: TextAlign.end,
          decoration: InputDecoration(
            focusedBorder: _textFieldFocusOutlineInputBorder(),
            border: _textFieldOutlineInputBorder(),
            // hintText: MainLocalizations.of(context).hintAddBeginning,
          ),
          onChanged: (final value) =>
              _updateWordsModelPhrases(isFromBeginning: true, value: value),
          controller: _leftTextController,
        ),
      ),
    );
  }

  Widget _endingTextField() {
    // final wordsModel = Provider.of<WordsModel>(context);
    return Expanded(
      child: TextField(
        style: const TextStyle(fontSize: 14.0),
        decoration: InputDecoration(
          focusedBorder: _textFieldFocusOutlineInputBorder(),
          border: _textFieldOutlineInputBorder(),
          // hintText: wordsModel.isNoWordsRecordedYet
          //     ? MainLocalizations.of(context).hintAddNewWord
          //     : MainLocalizations.of(context).hintAddEnding,
        ),
        onChanged: (final value) =>
            _updateWordsModelPhrases(isFromBeginning: false, value: value),
        controller: _rightTextController,
      ),
    );
  }

  Future<void> _addNewWord() async {
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
