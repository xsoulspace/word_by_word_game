import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';

class PlayerProfileList extends StatelessWidget {
  const PlayerProfileList({
    required this.onSelected,
    required this.checkIsPlayerSelected,
    super.key,
  });
  final ValueChanged<PlayerProfileModel> onSelected;
  final CheckFunction<PlayerProfileModel> checkIsPlayerSelected;
  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    return Card(
      child: BlocBuilder<GlobalGameBloc, GlobalGameBlocState>(
        builder: (final context, final state) {
          if (state is! LiveGlobalGameBlocState) return const SizedBox();
          final players = state.playersCollection;
          return ListView.separated(
            separatorBuilder: (final context, final index) =>
                uiTheme.verticalBoxes.medium,
            padding: EdgeInsets.all(uiTheme.spacing.large),
            itemCount: players.length,
            shrinkWrap: true,
            primary: false,
            itemBuilder: (final context, final index) {
              final player = players[index];
              return PlayerProfileTile(
                player: player,
                key: ValueKey(player),
                onSelected: onSelected,
                selected: checkIsPlayerSelected(player),
              );
            },
          );
        },
      ),
    );
  }
}

class PlayerProfileTile extends StatelessWidget {
  const PlayerProfileTile({
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
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        PlayerProfileAvatar(player: player),
        uiTheme.horizontalBoxes.medium,
        Text(player.name),
        if (onSelected != null) ...[
          const Spacer(),
          Checkbox(value: selected, onChanged: (final _) => onSelected!(player))
        ],
      ],
    );
  }
}

class PlayerProfileAvatar extends StatelessWidget {
  const PlayerProfileAvatar({required this.player, super.key});
  final PlayerProfileModel player;
  @override
  Widget build(final BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: player.color,
        borderRadius: BorderRadius.circular(24),
      ),
      width: 40,
      height: 40,
      child: Text(player.name),
    );
  }
}
