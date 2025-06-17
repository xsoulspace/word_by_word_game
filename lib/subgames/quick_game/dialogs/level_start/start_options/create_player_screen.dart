import 'package:word_by_word_game/common_imports.dart';
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
    final globalGameBloc = context.watch<GlobalGameBloc>();
    final liveState = globalGameBloc.state;
    final isPlayersEmpty = liveState.playersCollection.isEmpty;
    // final screenSize = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final notifier = useStateBuilder(
      () => PlayerProfileCreatorNotifier(context),
    );
    final widgetState = notifier.value;
    final locale = useLocale(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        UiGaps.medium,
        Text(
          isPlayersEmpty
              ? S.of(context).createNewFirstPlayerTitle
              : S.of(context).createNewPlayerTitle,
          style: theme.textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        UiGaps.small,
        Text(
          S.of(context).createNewPlayerBody,
          style: theme.textTheme.bodySmall,
          textAlign: TextAlign.center,
        ),
        const Spacer(),
        TextFieldWithKeyboard(
          controller: notifier.nameController,
          autofocus: true,
          errorMessage: widgetState.nameErrorMessage,
          decoration: InputDecoration.collapsed(
            hintText: S.of(context).username,
          ),
        ),
        const Gap(2),
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
                final profile = await notifier.onCreateProfile(locale: locale);
                if (profile == null) return;
                onPlayerCreated(profile);
              },
            ),
          ],
        ),
        UiGaps.medium,
      ],
    );
  }
}
