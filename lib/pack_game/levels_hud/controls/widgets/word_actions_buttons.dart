import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/ephemeral/ephemeral.dart';

class AddWordToDictionaryButton extends StatelessWidget {
  const AddWordToDictionaryButton({
    required this.onPressed,
    super.key,
  });
  final VoidCallback onPressed;
  @override
  Widget build(final BuildContext context) {
    final warning = context.select<LevelBloc, WordWarning>((final s) {
      return s.getLiveState().wordWarning;
    });

    return UiIconButton(
      isEnabled: warning == WordWarning.isNotCorrect,
      onPressed: onPressed,
      icon: UiIcons.dictionary_add,
    );
  }
}
