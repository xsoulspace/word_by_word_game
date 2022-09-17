import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/navigation/navigation.dart';

part 'level_options_screen_state.dart';

class LevelOptionsScreen extends HookWidget {
  const LevelOptionsScreen({super.key});

  @override
  Widget build(final BuildContext context) {
    final state = _useLevelOptionsScreenState(read: context.read);
    final uiTheme = UiTheme.of(context);
    final globalGameBloc = context.watch<GlobalGameBloc>();
    final players = globalGameBloc.getLiveState().playersCollection;
    final routeState = context.watch<RouteState>();
    final routeArgs = LevelRouteArgs.fromJson(routeState.route.parameters);
    final level = globalGameBloc.getTemplateLevelById(id: routeArgs.levelId);
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(uiTheme.spacing.large),
        child: Column(
          children: [
            Text(level.id.toUpperCase()),
            uiTheme.verticalBoxes.medium,
            const Text(
              'Level Options ',
            ),
            uiTheme.verticalBoxes.large,
            SizedBox(
              height: screenSize.height * 0.3,
              child: PlayersRow(
                players: players,
                checkIsPlayerSelected: state.checkIsPlayerSelected,
                onPlayerPressed: state.onPlayerPressed,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PlayersRow extends StatelessWidget {
  const PlayersRow({
    required this.checkIsPlayerSelected,
    required this.onPlayerPressed,
    required this.players,
    super.key,
  });
  final ValueChanged<PlayerProfileModel> onPlayerPressed;
  final bool Function(PlayerProfileModel player) checkIsPlayerSelected;
  final List<PlayerProfileModel> players;
  @override
  Widget build(final BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: players.length,
      itemBuilder: (final context, final index) {
        final player = players[index];
        return PlayerCard(
          selected: checkIsPlayerSelected(player),
          onPressed: onPlayerPressed,
          player: player,
          key: ValueKey(player),
        );
      },
    );
  }
}

class PlayerCard extends StatelessWidget {
  const PlayerCard({
    required this.selected,
    required this.player,
    required this.onPressed,
    super.key,
  });
  final PlayerProfileModel player;
  final ValueChanged<PlayerProfileModel> onPressed;
  final bool selected;
  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      elevation: selected ? 12.0 : 1.0,
      color: selected ? theme.colorScheme.onTertiary : null,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => onPressed(player),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [Text(player.id)],
        ),
      ),
    );
  }
}
