import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/models/PlayersModel.dart';
import 'package:word_by_word_game/models/StorageModel.dart';
import 'package:word_by_word_game/models/WordsModel.dart';

class InputWidget extends StatefulWidget {
  @override
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  final TextEditingController _leftTextController = TextEditingController();
  final TextEditingController _rightTextController = TextEditingController();
  _addNewWord() async {
    String leftLetters = _leftTextController.text;
    String rightLetters = _rightTextController.text;
    if (leftLetters.isNotEmpty || rightLetters.isNotEmpty) {
      var wordsModel = Provider.of<WordsModel>(context, listen: false);
      var playersModel = Provider.of<PlayersModel>(context, listen: false);
      var storageModel = Provider.of<StorageModel>(context, listen: false);
      var isWordSuccessfullyAdded = await wordsModel.addNewWordForPLayer(
          player: playersModel.currentPlayer);
      if (isWordSuccessfullyAdded) {
        await storageModel.saveWordsModel();
        _leftTextController.text = wordsModel.newWordBeginning;
        _rightTextController.text = wordsModel.newWordEnding;
        if (playersModel.isNotOnePlayerPlaying) {
          playersModel.nextPlayer();
          await storageModel.savePlayersModel();
        }
      }
    }
    // show error that field need to be filled
  }

  @override
  void initState() {
    _leftTextController.addListener(_updateWordsModelPhrases);
    _rightTextController.addListener(_updateWordsModelPhrases);
    super.initState();
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.

    _leftTextController.removeListener(_updateWordsModelPhrases);
    _rightTextController.removeListener(_updateWordsModelPhrases);
    _leftTextController.dispose();
    _rightTextController.dispose();
    super.dispose();
  }

  _textFieldOutlineInputBorder() {
    return OutlineInputBorder(borderRadius: BorderRadius.circular(20));
  }

  _decreaseButton({@required bool isFromBeginning}) {
    var storageModel = Provider.of<StorageModel>(context, listen: false);
    var wordsModel = Provider.of<WordsModel>(context, listen: false);

    return IconButton(
      disabledColor: Colors.grey,
      iconSize: 36,
      color: Colors.red,
      splashColor: Colors.red.withOpacity(0.4),
      hoverColor: Colors.red.withOpacity(0.1),
      highlightColor: Colors.red.withOpacity(0.2),
      icon: Icon(Icons.remove),
      onPressed: wordsModel.isPhraseLimitAvailable
          ? () async {
              wordsModel.reducePhraseLimit(isFromBeginning: isFromBeginning);
              await storageModel.saveWordsModel();
            }
          : null,
    );
  }

  _updateWordsModelPhrases() async {
    var storageModel = Provider.of<StorageModel>(context, listen: false);
    var wordsModel = Provider.of<WordsModel>(context, listen: false);
    wordsModel.newWordBeginning = _leftTextController.text;
    wordsModel.newWordEnding = _rightTextController.text;
    await storageModel.saveWordsModel();
  }

  @override
  Widget build(BuildContext context) {
    var wordsModel = Provider.of<WordsModel>(context, listen: false);

    return Material(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Center(
            child: Consumer<WordsModel>(
                builder:
                    (BuildContext buildContext, wordsModel, Widget widget) =>
                        Text(wordsModel.lastword)),
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
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                        border: _textFieldOutlineInputBorder(),
                        // TODO: add word tranlation
                        hintText: 'add beginning'),
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
                  decoration: InputDecoration(
                      border: _textFieldOutlineInputBorder(),
                      //TODO: add translation
                      hintText: wordsModel.isNoWordsRecordedYet
                          ? 'add new word'
                          : 'add ending'),
                  controller: _rightTextController,
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Center(
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: // TODO: add international text
                    Padding(
                  padding: EdgeInsets.all(24),
                  child: Text('add', style: TextStyle(fontSize: 24)),
                ),
                onPressed: () async => await _addNewWord(),
              ),
            ),
          )
        ]));
  }
}
