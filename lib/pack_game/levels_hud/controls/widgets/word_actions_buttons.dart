import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:word_by_word_game/pack_core/global_states/ephemeral/ephemeral.dart';

class SendWordButton extends StatelessWidget {
  const SendWordButton({
    required this.onPressed,
    super.key,
  });
  final VoidCallback onPressed;
  @override
  Widget build(final BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: const Text('Send'),
    );
  }
}

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

    return Visibility(
      visible: warning == WordWarning.isNotCorrect,
      child: TextButton(
        onPressed: onPressed,
        child: const Text('Add to dictionary'),
      ),
    );
  }
}
