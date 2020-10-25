import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/models/ScoreModel.dart';

class InputWidget extends StatefulWidget {
  @override
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  TextEditingController _leftTextController = TextEditingController();
  TextEditingController _rightTextController = TextEditingController();
  _addNewWord() {
    String leftLetters = _leftTextController.value.text;
    String rightLetters = _leftTextController.value.text;

    if (leftLetters.isEmpty && rightLetters.isEmpty) {
      ScoreModel scoreModel = Provider.of<ScoreModel>(context);
      final newWord = '$leftLetters${scoreModel.currentLetters}$rightLetters';
      if (newWord.length > 3) scoreModel.add(newWord);
    }

    // show error that field need to be filled
  }

  @override
  Widget build(BuildContext context) {
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
          Row(
            children: [
              // first input
              TextField(
                decoration:
                    InputDecoration(border: InputBorder.none, hintText: ''),
                controller: _leftTextController,
              ),
              // letters
              Consumer<ScoreModel>(
                  builder: (BuildContext buildContext, ScoreModel scoreModel,
                          Widget widget) =>
                      Text(scoreModel.currentLetters)),
              // second input
              TextField(
                decoration:
                    InputDecoration(border: InputBorder.none, hintText: ''),
                controller: _rightTextController,
              ),
            ],
          ),
          Center(
            child: MaterialButton(
              child: // TODO: add international text
                  Text('Add'),
              onPressed: () => _addNewWord,
            ),
          )
        ]);
  }
}
