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

  @override
  Widget build(BuildContext context) {
    ScoreModel globalScoreModel = Provider.of<ScoreModel>(context);
    return Column(
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
              Expanded(
                child: TextField(
                  readOnly: globalScoreModel.isNewGame,
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                      border: globalScoreModel.isNewGame
                          ? InputBorder.none
                          : _textFieldOutlineInputBorder(),
                      hintText: ''),
                  controller: _leftTextController,
                ),
              ),
              // // letters
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () =>
                              globalScoreModel.increaseLettersLimit(),
                          icon: Icon(Icons.add),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () =>
                              globalScoreModel.decreaseLettersLimit(),
                        ),
                      ],
                    ),
                    Consumer<ScoreModel>(
                        builder: (BuildContext buildContext,
                                ScoreModel scoreModel, Widget widget) =>
                            Text(scoreModel.currentLetters)),
                  ],
                ),
              ),
              // second input
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      border: _textFieldOutlineInputBorder(), hintText: ''),
                  controller: _rightTextController,
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Center(
              child: MaterialButton(
                child: // TODO: add international text
                    Text('Add'),
                onPressed: () => _addNewWord(),
              ),
            ),
          )
        ]);
  }
}
