import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:word_by_word_game/widgets/EndGameDialog.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
              leading: Icon(Icons.add_circle_outline),
              title:
                  // TODO: add translation
                  Text('New Game'),
              onTap: () => showEndGameDialog(context)),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'For any bugs or ideas please send your feedback to xsoulspace@gmail.com'),
              SizedBox(height: 0.01 * size.height),
              Text('Thank you and happy gaming!'),
              SizedBox(height: 0.01 * size.height),
              Text('2020 \u00a9 X Soul Space '),
            ],
          )
        ],
      ),
    );
  }

  showEndGameDialog(BuildContext context) {
    bool isCanPop = Navigator.canPop(context);
    if (isCanPop) Navigator.pop(context);
    showDialog(
      context: context,
      builder: (context) => EndGameDialog(),
    );
  }
}
