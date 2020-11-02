import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/localizations/MainLocalizations.dart';
import 'package:word_by_word_game/models/NotificationsModel.dart';
import 'package:word_by_word_game/models/PlayersModel.dart';
import 'package:word_by_word_game/models/StorageModel.dart';
import 'package:word_by_word_game/models/WordsModel.dart';
import 'package:word_by_word_game/widgets/PlayerWidget.dart';

class InputWidget extends StatefulWidget {
  @override
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  final TextEditingController _leftTextController = TextEditingController();
  final TextEditingController _rightTextController = TextEditingController();
  @override
  void initState() {
    super.initState();
    // _leftTextController.addListener(_updateWordsModelPhrases);
    // _rightTextController.addListener(_updateWordsModelPhrases);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.

    // _leftTextController.removeListener(_updateWordsModelPhrases);
    _leftTextController.dispose();
    // _rightTextController.removeListener(_updateWordsModelPhrases);
    _rightTextController.dispose();
    super.dispose();
  }

  _textFieldOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
    );
  }

  _textFieldFocusOutlineInputBorder() {
    var playersModel = Provider.of<PlayersModel>(context, listen: false);
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
            color:
                playersModel.currentPlayer.playerColor.color.withOpacity(0.7)));
  }

  _decreaseButton({@required bool isFromBeginning}) {
    var storageModel = Provider.of<StorageModel>(context, listen: false);
    var wordsModel = Provider.of<WordsModel>(context, listen: false);
    var playersModel = Provider.of<PlayersModel>(context, listen: false);
    var playerColor = playersModel.currentPlayer.playerColor.color;
    return IconButton(
      disabledColor: Colors.grey,
      iconSize: 36,
      color: playerColor,
      splashColor: playerColor.withOpacity(0.4),
      hoverColor: playerColor.withOpacity(0.1),
      highlightColor: playerColor.withOpacity(0.2),
      icon: Icon(Icons.remove),
      onPressed: wordsModel.isPhraseLimitLeftAvailable
          ? () async {
              wordsModel.reducePhraseLimit(isFromBeginning: isFromBeginning);
              await storageModel.saveWordsModel();
            }
          : null,
    );
  }

  _updateWordsModelPhrases(
      {@required String value, @required bool isFromBeginning}) async {
    var wordsModel = Provider.of<WordsModel>(context, listen: false);
    if (isFromBeginning) {
      wordsModel.newWordBeginning = value;
    } else {
      wordsModel.newWordEnding = value;
    }
    var storageModel = Provider.of<StorageModel>(context, listen: false);
    await storageModel.saveWordsModel();
  }

  bool _isLeftControllerInitialized = false;
  bool _isRightControllerInitialized = false;
  @override
  Widget build(BuildContext context) {
    var wordsModel = Provider.of<WordsModel>(context);
    var playersModel = Provider.of<PlayersModel>(context);
    if (!_isLeftControllerInitialized &&
        wordsModel.newWordBeginning.length > 0) {
      _leftTextController.text = wordsModel.newWordBeginning;
      _isLeftControllerInitialized = true;
    }
    if (!_isRightControllerInitialized && wordsModel.newWordEnding.length > 0) {
      _rightTextController.text = wordsModel.newWordEnding;
      _isRightControllerInitialized = true;
    }

    return Material(
        color: Colors.transparent,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(MainLocalizations.of(context).player),
                  SizedBox(width: 10),
                  Container(
                      height: 30.0,
                      width: 30.0,
                      child: FittedBox(
                          child: PlayerWidget(
                        player: playersModel.currentPlayer,
                        isDisabled: true,
                        fontSize: 24,
                      ))),
                  SizedBox(width: 30),
                  Consumer<WordsModel>(
                      builder: (BuildContext buildContext, wordsModel,
                              Widget widget) =>
                          Text(wordsModel.isAtLeastOneWordRecorded
                              ? '${MainLocalizations.of(context).lastword} ${wordsModel.lastword}'
                              : '')),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
              ),
              Row(
                children: [
                  // first input
                  Visibility(
                    visible: wordsModel.isAtLeastOneWordRecorded &&
                        wordsModel.isPhraseFromLastwordNotEmpty,
                    child: Expanded(
                      child: TextField(
                        style: TextStyle(fontSize: 14.0),
                        textAlign: TextAlign.end,
                        decoration: InputDecoration(
                            focusedBorder: _textFieldFocusOutlineInputBorder(),
                            border: _textFieldOutlineInputBorder(),
                            hintText:
                                MainLocalizations.of(context).hintAddBeginning),
                        onChanged: (String value) => _updateWordsModelPhrases(
                            isFromBeginning: true, value: value),
                        controller: _leftTextController,
                      ),
                    ),
                  ),
                  // // letters
                  Visibility(
                      visible: wordsModel.isAtLeastOneWordRecorded &&
                          wordsModel.isPhraseFromLastwordNotEmpty,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            _decreaseButton(isFromBeginning: true),
                            Consumer<WordsModel>(
                                builder: (BuildContext buildContext, wordsModel,
                                        Widget widget) =>
                                    Text(wordsModel.phraseFromLastword)),
                            _decreaseButton(isFromBeginning: false)
                          ],
                        ),
                      )),
                  // second input
                  Expanded(
                    child: TextField(
                      style: TextStyle(fontSize: 14.0),
                      decoration: InputDecoration(
                          focusedBorder: _textFieldFocusOutlineInputBorder(),
                          border: _textFieldOutlineInputBorder(),
                          hintText: wordsModel.isNoWordsRecordedYet
                              ? MainLocalizations.of(context).hintAddNewWord
                              : MainLocalizations.of(context).hintAddEnding),
                      onChanged: (String value) => _updateWordsModelPhrases(
                          isFromBeginning: false, value: value),
                      controller: _rightTextController,
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Center(
                  child: FlatButton(
                    hoverColor: Colors.white.withOpacity(0.3),
                    focusColor: Colors.white.withOpacity(0.5),
                    splashColor: playersModel.currentPlayer.playerColor.color
                        .withOpacity(0.4),
                    highlightColor: Colors.white.withOpacity(0.7),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: EdgeInsets.all(24),
                      child: Text(MainLocalizations.of(context).addNewWord,
                          style: TextStyle(fontSize: 24)),
                    ),
                    onPressed: () async => await _addNewWord(),
                  ),
                ),
              )
            ]));
  }

  _addNewWord() async {
    var notificationsModel =
        Provider.of<NotificationsModel>(context, listen: false);
    var wordsModel = Provider.of<WordsModel>(context, listen: false);
    var playersModel = Provider.of<PlayersModel>(context, listen: false);
    var storageModel = Provider.of<StorageModel>(context, listen: false);
    var gameNotification = await wordsModel.addNewWordForPLayer(
        player: playersModel.currentPlayer);
    if (gameNotification.status) {
      await storageModel.saveWordsModel();
      _leftTextController.text = wordsModel.newWordBeginning;
      _rightTextController.text = wordsModel.newWordEnding;
      if (playersModel.isNotOnePlayerPlaying) {
        playersModel.nextPlayer();
        await storageModel.savePlayersModel();
      }
      // resetting notification state
      notificationsModel.gameNotification = null;
    } else {
      notificationsModel.gameNotification = gameNotification;
    }
  }
}
