import 'package:flutter/foundation.dart';
import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/level_start/start_options/widgets/player_profile_row.dart';
import 'package:word_by_word_game/subgames/quick_game/pause/adventure_view.dart';

class PlayersAndHighscoreView extends HookWidget {
  const PlayersAndHighscoreView({
    super.key,
  });
  @override
  Widget build(final BuildContext context) {
    final players = context.select<GlobalGameBloc, List<PlayerProfileModel>>(
      (final value) {
        final effectivePlayers = [...value.state.playersCollection];
        return effectivePlayers
          ..sort(
            (final a, final b) =>
                b.highscore.score.value.compareTo(a.highscore.score.value),
          );
      },
    );
    final locale = useLocale(context);
    return DecoratedDialogScaffold(
      bottomButton: const ViewBackButton(),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      children: [
        UiGaps.small,
        Center(
          child: Text(
            LocalizedMap(
              value: {
                languages.en: 'HIGHSCORES',
                languages.ru: 'РЕЙТИНГ',
                languages.it: 'CLASSIFICA',
              },
            ).getValue(locale),
            style: const TextStyle(fontSize: 24),
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHorizontalDivider(),
          ],
        ),
        ...players.map(
          (final e) => PlayerProfileTile(
            player: e,
            onDelete: !kDebugMode
                ? null
                : (final profile) {
                    unawaited(
                      context.read<GlobalGameBloc>().onDeletePlayerProfile(
                            DeletePlayerProfileEvent(
                              profile: profile,
                            ),
                          ),
                    );
                  },
          ),
        ),
        UiGaps.extraLarge,
        UiGaps.extraLarge,
      ],
    );
  }
}
