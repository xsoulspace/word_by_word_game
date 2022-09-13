import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/pack_core/global_states/ephemeral/level_bloc.dart';

class _SendWordActionButtonDiDto {
  _SendWordActionButtonDiDto.use(final Locator read) : levelBloc = read();
  final LevelBloc levelBloc;
}

_SendWordActionButton _useSendWordActionButton({
  required final Locator read,
}) =>
    use(
      LifeHook(
        debugLabel: '_SendWordActionButton',
        state: _SendWordActionButton(
          diDto: _SendWordActionButtonDiDto.use(read),
        ),
      ),
    );

class _SendWordActionButton extends LifeState {
  _SendWordActionButton({
    required this.diDto,
  });
  final _SendWordActionButtonDiDto diDto;
  void onSend() {
    diDto.levelBloc.add(const AcceptNewWordEvent());
  }
}

class SendWordActionButton extends StatelessWidget {
  const SendWordActionButton({super.key});

  @override
  Widget build(final BuildContext context) {
    final state = _useSendWordActionButton(read: context.read);

    return SendWordButton(
      onPressed: state.onSend,
    );
  }
}

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
