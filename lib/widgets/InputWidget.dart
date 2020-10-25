import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/models/ScoreModel.dart';

class InputWidget extends StatefulWidget {
  @override
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  final TextEditingController _leftTextController = TextEditingController();
  final TextEditingController _rightTextController = TextEditingController();
  _addNewWord() {
    String leftLetters = _leftTextController.text;
    String rightLetters = _rightTextController.text;
    if (leftLetters.isNotEmpty || rightLetters.isNotEmpty) {
      ScoreModel scoreModel = Provider.of<ScoreModel>(context, listen: false);
      final newWord = '$leftLetters${scoreModel.currentLetters}$rightLetters';
      if (newWord.length >= 3) {
        scoreModel.add(newWord);
        _leftTextController.text = '';
        _rightTextController.text = '';
      }
    }
    // show error that field need to be filled
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    _leftTextController.dispose();
    _rightTextController.dispose();
    super.dispose();
  }

  _textFieldOutlineInputBorder() {
    return OutlineInputBorder(borderRadius: BorderRadius.circular(20));
  }

  _decreaseButton({bool fromBeginning}) {
    ScoreModel scoreModel = Provider.of<ScoreModel>(context, listen: false);

    return IconButton(
      disabledColor: Colors.grey,
      iconSize: 36,
      color: Colors.red,
      splashColor: Colors.red.withOpacity(0.4),
      hoverColor: Colors.red.withOpacity(0.1),
      highlightColor: Colors.red.withOpacity(0.2),
      icon: Icon(Icons.remove),
      onPressed: scoreModel.isLettersIncreaseDescreaseAvailable
          ? () => scoreModel.decreaseLettersLimit(fromBeginning: fromBeginning)
          : null,
    );
  }

  @override
  Widget build(BuildContext context) {
    ScoreModel globalScoreModel = Provider.of<ScoreModel>(context);
    return Material(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Center(
            child: Consumer<ScoreModel>(
                builder: (BuildContext buildContext, ScoreModel scoreModel,
                        Widget widget) =>
                    Text(scoreModel.lastWordWithoutLetters)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
          ),
          Row(
            children: [
              // first input
              Visibility(
                visible: globalScoreModel.isNotNewGame &&
                    globalScoreModel.isCurrentLettersNotEmpty,
                child: Expanded(
                  child: TextField(
                    readOnly: globalScoreModel.isNewGame,
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
                  visible: globalScoreModel.isNotNewGame &&
                      globalScoreModel.isCurrentLettersNotEmpty,
                  maintainState: true,
                  maintainAnimation: true,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _decreaseButton(fromBeginning: true),
                        Consumer<ScoreModel>(
                            builder: (BuildContext buildContext,
                                    ScoreModel scoreModel, Widget widget) =>
                                Text(scoreModel.currentLetters)),
                        _decreaseButton(fromBeginning: false)
                      ],
                    ),
                  )),
              // second input
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      border: _textFieldOutlineInputBorder(),
                      //TODO: add translation
                      hintText: globalScoreModel.isNewGame
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
                onPressed: () => _addNewWord(),
              ),
            ),
          )
        ]));
  }
}
