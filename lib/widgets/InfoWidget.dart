import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:word_by_word_game/localizations/MainLocalizations.dart';

class InfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(MainLocalizations.of(context).sendFeedback),
        SizedBox(height: 10),
        Text(MainLocalizations.of(context).thankYou),
        SizedBox(height: 10),
        Text(MainLocalizations.of(context).copyright),
      ],
    );
  }
}
