import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/constants/app_constraints.dart';
import 'package:word_by_word_game/constants/game_notification_statuses.dart';
import 'package:word_by_word_game/localizations/main_localizations.dart';
import 'package:word_by_word_game/models/NotificationsModel.dart';
import 'package:word_by_word_game/models/PlayersModel.dart';
import 'package:word_by_word_game/models/WordsModel.dart';
import 'package:word_by_word_game/shared_utils_models/locale_model.dart';
import 'package:word_by_word_game/shared_utils_models/storage_model.dart';

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

  Widget _decreaseButton({required bool isFromBeginning}) {
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

  Future<void> _updateWordsModelPhrases(
      {required String value, required bool isFromBeginning}) async {
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

  Widget _lastwordWidget() {
    return Flexible(
      child: Consumer<WordsModel>(
          builder: (BuildContext buildContext, wordsModel, Widget widget) =>
              Text(
                wordsModel.isAtLeastOneWordRecorded
                    ? '${MainLocalizations.of(context).lastword} ${wordsModel.lastword}'
                    : '',
                textAlign: TextAlign.center,
              )),
    );
  }

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
    var size = MediaQuery.of(context).size;

    return Material(
        color: Colors.transparent,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(children: [
                SizedBox(
                  width: 20,
                ),
                _lastwordWidget()
              ]),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
              ),
              LayoutBuilder(builder: (context, constraints) {
                if (AppConstraints.isMobile(constraints.maxWidth)) {
                  return Container(
                    height: size.height * 0.2,
                    child: Column(children: [
                      // first input
                      _beginnigTextField(),
                      // // letters
                      _decreaseAndPhraseWidget(),
                      // second input
                      _endingTextField()
                    ]),
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
              }),
              Padding(
                padding: EdgeInsets.only(
                    top: AppConstraints.isMobile(size.width)
                        ? 5
                        : AppConstraints.isMedium(size.width)
                            ? 14
                            : 30),
                child: Center(
                  child: TextButton(
                    child: Padding(
                      padding:
                          EdgeInsets.all(AppConstraints.isMobile(size.width)
                              ? 5
                              : AppConstraints.isMedium(size.width)
                                  ? 14
                                  : 24),
                      child: Text(MainLocalizations.of(context).addNewWord,
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: AppConstraints.isMobile(size.width)
                                  ? 14
                                  : 18)),
                    ),
                    onPressed: () async => await _addNewWord(),
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all<Color>(
                          playersModel.currentPlayer.playerColor.color
                              .withOpacity(0.05)),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.transparent),
                    ),
                  ),
                ),
              )
            ]));
  }

  Widget _decreaseAndPhraseWidget() {
    var wordsModel = Provider.of<WordsModel>(context);
    return Visibility(
      visible: wordsModel.isAtLeastOneWordRecorded &&
          wordsModel.isPhraseFromLastwordNotEmpty,
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _decreaseButton(isFromBeginning: true),
                    Consumer<WordsModel>(
                        builder: (BuildContext buildContext, wordsModel,
                                Widget widget) =>
                            Text(wordsModel.phraseFromLastword)),
                    _decreaseButton(isFromBeginning: false)
                  ],
                ),
                Visibility(
                    visible: wordsModel.isPhraseLimitLeftAvailable,
                    child: Center(
                      child: Consumer<WordsModel>(
                          builder: (context, wordsModel, child) {
                        var lettersToRemoveText =
                            MainLocalizations.of(context).lettersToRemove;
                        return Text(
                          '${wordsModel.phraseLimitLettersLeft} $lettersToRemoveText',
                          style: TextStyle(fontSize: 10),
                        );
                      }),
                    ))
              ])),
    );
  }

  Widget _beginnigTextField() {
    var wordsModel = Provider.of<WordsModel>(context);
    return Visibility(
      visible: wordsModel.isAtLeastOneWordRecorded &&
          wordsModel.isPhraseFromLastwordNotEmpty,
      child: Expanded(
        child: TextField(
          style: TextStyle(fontSize: 14.0),
          textAlign: TextAlign.end,
          decoration: InputDecoration(
              focusedBorder: _textFieldFocusOutlineInputBorder(),
              border: _textFieldOutlineInputBorder(),
              hintText: MainLocalizations.of(context).hintAddBeginning),
          onChanged: (String value) =>
              _updateWordsModelPhrases(isFromBeginning: true, value: value),
          controller: _leftTextController,
        ),
      ),
    );
  }

  Widget _endingTextField() {
    var wordsModel = Provider.of<WordsModel>(context);
    return Expanded(
      child: TextField(
        style: TextStyle(fontSize: 14.0),
        decoration: InputDecoration(
            focusedBorder: _textFieldFocusOutlineInputBorder(),
            border: _textFieldOutlineInputBorder(),
            hintText: wordsModel.isNoWordsRecordedYet
                ? MainLocalizations.of(context).hintAddNewWord
                : MainLocalizations.of(context).hintAddEnding),
        onChanged: (String value) =>
            _updateWordsModelPhrases(isFromBeginning: false, value: value),
        controller: _rightTextController,
      ),
    );
  }

  Future<void> _addNewWord() async {
    var notificationsModel =
        Provider.of<NotificationsModel>(context, listen: false);
    var wordsModel = Provider.of<WordsModel>(context, listen: false);
    var playersModel = Provider.of<PlayersModel>(context, listen: false);
    var localeModel = Provider.of<LocaleModel>(context, listen: false);
    var storageModel = Provider.of<StorageModel>(context, listen: false);
    var gameNotification = await wordsModel.addNewWordForPLayer(
        player: playersModel.currentPlayer, locale: localeModel.locale);
    if (gameNotification.status == GameNotificationStatuses.done) {
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
