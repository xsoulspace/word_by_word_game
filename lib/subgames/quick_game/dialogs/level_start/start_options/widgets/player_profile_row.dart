import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';

class PlayerProfileRow extends StatelessWidget {
  const PlayerProfileRow({
    required this.onSelected,
    required this.checkIsPlayerSelected,
    super.key,
  });
  final ValueChanged<PlayerProfileModel> onSelected;
  final CheckFunction<PlayerProfileModel> checkIsPlayerSelected;
  @override
  Widget build(final BuildContext context) =>
      BlocBuilder<GlobalGameBloc, GlobalGameBlocState>(
        builder: (final context, final state) {
          final players = state.playersCollection;
          return Scrollbar(
            interactive: true,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (final context, final index) => UiGaps.large,
              padding: EdgeInsets.zero,
              itemCount: players.length,
              shrinkWrap: true,
              itemBuilder: (final context, final index) {
                final player = players[index];
                return PlayerProfileCard(
                  key: ValueKey(player),
                  player: player,
                  onSelected: onSelected,
                  selected: checkIsPlayerSelected(player),
                );
              },
            ),
          );
        },
      );
}

class PlayerProfileCard extends StatelessWidget {
  const PlayerProfileCard({
    required this.player,
    this.onSelected,
    this.selected,
    super.key,
  });
  final PlayerProfileModel player;
  final ValueChanged<PlayerProfileModel>? onSelected;
  final bool? selected;
  @override
  Widget build(final BuildContext context) => Center(
        child: FocusableActionDetector(
          mouseCursor: SystemMouseCursors.click,
          child: Card(
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              onTap: () => onSelected?.call(player),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    UiPlayerProfileAvatar(player: player),
                    UiGaps.large,
                    Text(player.name),
                    if (onSelected != null) ...[
                      Checkbox(
                        value: selected,
                        onChanged: (final _) => onSelected!(player),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}

class PlayerProfileTile extends StatelessWidget {
  const PlayerProfileTile({
    required this.player,
    this.onDelete,
    this.onSelected,
    this.selected,
    super.key,
  });
  final PlayerProfileModel player;
  final ValueChanged<PlayerProfileModel>? onSelected;
  final ValueChanged<PlayerProfileModel>? onDelete;
  final bool? selected;
  @override
  Widget build(final BuildContext context) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(player.name),
          const Spacer(),
          const Icon(
            CupertinoIcons.lab_flask,
            size: 14,
            color: UiColors.light,
          ),
          const Gap(4),
          Flexible(child: UiPlayerProfileAvatar(player: player)),
          UiGaps.medium,
          if (onSelected != null) ...[
            Checkbox(
              value: selected,
              onChanged: (final _) => onSelected!(player),
            ),
          ],
          if (kDebugMode)
            IconButton(
              onPressed: onDelete == null ? null : () => onDelete!(player),
              icon: const Icon(Icons.delete),
            ),
        ],
      );
}

class UiPlayerProfileAvatar extends StatelessWidget {
  const UiPlayerProfileAvatar({
    required this.player,
    super.key,
  });
  final PlayerProfileModel player;
  @override
  Widget build(final BuildContext context) {
    final score = player.highscore.score.value ~/ kScoreFactor;
    return Text(
      '$score',
      maxLines: 1,
      style: const TextStyle(
        fontSize: 24,
        color: UiColors.mediumDark,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
