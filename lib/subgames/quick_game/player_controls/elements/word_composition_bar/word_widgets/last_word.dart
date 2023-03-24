import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';

class LastWordWidget extends StatelessWidget {
  const LastWordWidget({
    super.key,
  });
  @override
  Widget build(final BuildContext context) {
    final latestWord = context.select<LevelBloc, String>(
      (final state) => state.getLiveState().latestWord,
    );
    return LastWordText(latestWord: latestWord);
  }
}

class LastWordText extends StatelessWidget {
  const LastWordText({
    required this.latestWord,
    super.key,
  });
  final String latestWord;
  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    if (latestWord.isEmpty) return const SizedBox();
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(S.of(context).previousWord),
        uiTheme.horizontalBoxes.small,
        Text(latestWord),
      ],
    );
  }
}
