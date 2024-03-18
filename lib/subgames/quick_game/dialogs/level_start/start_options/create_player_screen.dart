import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/level_start/start_options/widgets/player_profile_creator.dart';
import 'package:word_by_word_game/subgames/quick_game/keyboards/keyboards.dart';

class CreatePlayerScreen extends HookWidget {
  const CreatePlayerScreen({
    required this.onCancel,
    required this.onPlayerCreated,
    super.key,
  });
  final VoidCallback onCancel;
  final ValueChanged<PlayerProfileModel> onPlayerCreated;
  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    final globalGameBloc = context.watch<GlobalGameBloc>();
    final liveState = globalGameBloc.state;
    final isPlayersEmpty = liveState.playersCollection.isEmpty;
    // final screenSize = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final notifier = useStateBuilder(
      () => PlayerProfileCreatorNotifier(context),
    );
    final widgetState = notifier.value;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        uiTheme.verticalBoxes.medium,
        Text(
          isPlayersEmpty
              ? S.of(context).createNewFirstPlayerTitle
              : S.of(context).createNewPlayerTitle,
          style: theme.textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        uiTheme.verticalBoxes.small,
        Text(
          S.of(context).createNewPlayerBody,
          style: theme.textTheme.bodySmall,
          textAlign: TextAlign.center,
        ),
        const Spacer(),
        TextFieldWithKeyboard(
          controller: notifier.nameController,
          autofocus: true,
          decoration: InputDecoration.collapsed(
            hintText: S.of(context).username,
          ),
        ),
        const Gap(2),
        Builder(
          builder: (final context) {
            final errorMessage = widgetState.nameErrorMessage;
            return AnimatedSize(
              duration: 150.milliseconds,
              child: errorMessage.isNotEmpty
                  ? Text(
                      widgetState.nameErrorMessage,
                      style: context.errorTextTheme.bodySmall,
                    )
                  : const SizedBox(),
            );
          },
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            if (!isPlayersEmpty)
              TextButton.icon(
                onPressed: onCancel,
                icon: const Icon(Icons.arrow_back_rounded),
                label: Text(S.of(context).back),
              ),
            UiTextButton.text(
              text: S.of(context).createPlayer,
              isLongButton: true,
              mainAlignment: MainAxisAlignment.center,
              onPressed: () async {
                final profile = await notifier.onCreateProfile();
                if (profile == null) return;
                onPlayerCreated(profile);
              },
            ),
          ],
        ),
        uiTheme.verticalBoxes.medium,
      ],
    );
  }
}
