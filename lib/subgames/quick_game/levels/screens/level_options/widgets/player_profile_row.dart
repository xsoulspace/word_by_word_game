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
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    return BlocBuilder<GlobalGameBloc, GlobalGameBlocState>(
      builder: (final context, final state) {
        if (state is! LiveGlobalGameBlocState) return const SizedBox();
        final players = state.playersCollection;
        return Scrollbar(
          interactive: true,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (final context, final index) =>
                uiTheme.verticalBoxes.medium,
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
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    return FocusableActionDetector(
      mouseCursor: SystemMouseCursors.click,
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: () => onSelected!(player),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                PlayerProfileAvatar(player: player),
                uiTheme.horizontalBoxes.medium,
                Text(player.name),
                if (onSelected != null) ...[
                  Checkbox(
                    value: selected,
                    onChanged: (final _) => onSelected!(player),
                  )
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
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
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        PlayerProfileAvatar(player: player),
        uiTheme.horizontalBoxes.medium,
        Text(player.name),
        if (onSelected != null) ...[
          Checkbox(value: selected, onChanged: (final _) => onSelected!(player))
        ],
        if (kDebugMode)
          IconButton(
            onPressed: onDelete == null ? null : () => onDelete!(player),
            icon: const Icon(Icons.delete),
          )
      ],
    );
  }
}

class PlayerProfileAvatar extends StatelessWidget {
  const PlayerProfileAvatar({
    required this.player,
    this.dimension = 45.0,
    super.key,
  });
  final double dimension;
  final PlayerProfileModel player;
  @override
  Widget build(final BuildContext context) {
    final score = player.highscore.score.value;
    return Container(
      decoration: BoxDecoration(
        color: player.color,
        borderRadius: BorderRadius.circular(24),
      ),
      width: dimension,
      height: dimension,
      alignment: Alignment.center,
      child: Text('${score.toInt()}'),
    );
  }
}
