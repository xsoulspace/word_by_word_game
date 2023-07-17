import 'dart:async';
import 'dart:math' as math;

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/ephemeral/ephemeral.dart';

class UiPlayersStateDiDto {
  UiPlayersStateDiDto.use(final Locator read) : levelPlayersBloc = read();
  final LevelPlayersBloc levelPlayersBloc;
}

UiPlayersState useUiPlayersState({required final Locator read}) => use(
      LifeHook(
        debugLabel: 'UiPlayersState',
        state: UiPlayersState(diDto: UiPlayersStateDiDto.use(read)),
      ),
    );

class UiPlayersState extends LifeState {
  UiPlayersState({
    required this.diDto,
  });

  final UiPlayersStateDiDto diDto;
  final players = <PlayerProfileModel>[];
  StreamSubscription<LevelPlayersBlocState>? levelPlayersBlocSubscription;
  String get currentPlayerId => diDto.levelPlayersBloc.state.currentPlayerId;
  @override
  void initState() {
    levelPlayersBlocSubscription =
        diDto.levelPlayersBloc.stream.listen(_onLevelPlayersBlocChange);
    super.initState();
  }

  void _onLevelPlayersBlocChange(final LevelPlayersBlocState state) {
    if (state.isEmpty) {
      players.clear();
      setState();
    } else {
      final newPlayers = state.players;
      final isPlayersListEquals = DeepCollectionEquality.unordered(
        EqualityBy<PlayerProfileModel, String>((final e) => e.id),
      ).equals(newPlayers, players);
      if (isPlayersListEquals) {
        // accurately update all players
        final updatedPlayers = [...players];
        final playersIndexedMap = newPlayers.toIndexedMap((final e) => e.id);

        for (var i = 0; i < players.length; i++) {
          final oldPlayer = players[i];
          final index = playersIndexedMap[oldPlayer.id]!;
          final newPlayer = newPlayers[index];
          updatedPlayers[i] = newPlayer;
        }
        final isPlayersListSame = DeepCollectionEquality(
          EqualityBy<PlayerProfileModel, double>(
            (final e) => e.highscore.score.value,
          ),
        ).equals(updatedPlayers, players);
        if (!isPlayersListSame) {
          players
            ..clear()
            ..addAll(updatedPlayers);

          setState();
        }
      } else {
        // replace all players
        players
          ..clear()
          ..addAll(newPlayers);
        setState();
      }
    }
  }

  @override
  void dispose() {
    unawaited(levelPlayersBlocSubscription?.cancel());
    super.dispose();
  }
}

class UIPlayersSideBar extends HookWidget {
  const UIPlayersSideBar({super.key});
  static const maxWidth = 220.0;
  @override
  Widget build(final BuildContext context) {
    final state = useUiPlayersState(read: context.read);
    final size = MediaQuery.of(context).size;

    final players = state.players;
    if (players.isEmpty || players.length == 1) return const SizedBox();
    final currentPlayerId = state.currentPlayerId;

    return Container(
      constraints: BoxConstraints(
        maxHeight: 200,
        maxWidth: math.min(maxWidth, size.width),
      ),
      child: ListView.separated(
        itemBuilder: (final context, final index) {
          final player = players[index];
          return UiPlayerAndScoreTile(
            player: player,
            isCurrent: player.id == currentPlayerId,
            key: ValueKey(player.id),
          );
        },
        separatorBuilder: (final context, final index) =>
            const SizedBox(height: 3),
        itemCount: players.length,
        padding: EdgeInsets.zero,
      ),
    ).animate().fadeIn(curve: Curves.easeOut).slideX(begin: -0.1, end: 0);
  }
}

class UiPlayerAndScoreTile extends StatelessWidget {
  const UiPlayerAndScoreTile({
    required this.player,
    required this.isCurrent,
    super.key,
  });
  final PlayerProfileModel player;
  final bool isCurrent;

  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    // final surfaceColorScheme = theme.extension<SurfaceColorScheme>()!;
    final textStyle =
        isCurrent ? theme.textTheme.labelLarge : theme.textTheme.labelMedium;
    final backgroundColor = isCurrent
        ? colorScheme.tertiaryContainer.withOpacity(0.7)
        : colorScheme.scrim.withOpacity(0.2);
    final radius = uiTheme.circularRadius.medium;

    return AnimatedContainer(
      duration: 350.milliseconds,
      padding: const EdgeInsets.only(
        top: 2,
        bottom: 2,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: radius,
          bottomRight: radius,
        ),
        color: backgroundColor,
        gradient: LinearGradient(
          colors: [
            colorScheme.tertiaryContainer.withOpacity(0.6),
            const Color(0x00FFFFFF),
          ],
          stops: const [0.4, 1],
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          UiAvatarBookmark(
            selected: isCurrent,
            player: player,
            textStyle: textStyle!,
          ),
          AnimatedContainer(
            duration: 50.milliseconds,
            width: isCurrent ? 6 : 12,
          ),
          Text(
            player.name,
            style: theme.textTheme.labelMedium?.copyWith(
              color:
                  isCurrent ? null : colorScheme.onBackground.withOpacity(0.6),
            ),

            /// textStyle,
          ),
        ],
      ),
    );
  }
}

class UiAvatarBookmark extends StatefulWidget {
  const UiAvatarBookmark({
    required this.player,
    required this.textStyle,
    required this.selected,
    super.key,
  });
  final PlayerProfileModel player;
  final TextStyle textStyle;
  final bool selected;

  @override
  State<UiAvatarBookmark> createState() => _UiAvatarBookmarkState();
}

class _UiAvatarBookmarkState extends State<UiAvatarBookmark>
    with SingleTickerProviderStateMixin {
  AnimationController? _appearanceScoreAnimationController;
  AnimationController? _decreaseScoreAnimationController;
  late double _score = widget.player.highscore.score.value;

  @override
  void didUpdateWidget(covariant final UiAvatarBookmark oldWidget) {
    super.didUpdateWidget(oldWidget);
    final newScore = widget.player.highscore.score.value;
    if (newScore != _score) {
      _appearanceScoreAnimationController
        ?..reset()
        ..forward();
      if (newScore < _score) {
        _decreaseScoreAnimationController
          ?..reset()
          ..forward();
      }
      _score = newScore;
    }
  }

  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    final radius = uiTheme.circularRadius;
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final selected = widget.selected;
    return AnimatedContainer(
      duration: 50.milliseconds,
      decoration: BoxDecoration(
        color: selected
            ? widget.player.color.withOpacity(0.8)
            : colorScheme.scrim.withOpacity(0.05),
        borderRadius: BorderRadius.only(
          topRight: radius.medium,
          bottomRight: radius.medium,
        ),
      ),
      padding: EdgeInsets.only(
        left: 4,
        right: selected ? 4 : 8,
        top: 2,
        bottom: 2,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Animate(
            autoPlay: false,
            onInit: (final controller) =>
                _decreaseScoreAnimationController = controller,
            effects: [ShakeEffect(duration: 1.seconds, hz: 10)],
            child: Text(
              '${_score.toInt()}',
              style: theme.textTheme.labelMedium?.copyWith(
                color: selected
                    ? colorScheme.onPrimary
                    : colorScheme.onBackground.withOpacity(0.6),
              ),

              // style: widget.textStyle,
            )
                .animate(
                  key: ValueKey(_score),
                  autoPlay: true,
                  onInit: (final controller) =>
                      _appearanceScoreAnimationController = controller,
                )
                .fadeIn()
                .slideY(
                  begin: -0.1,
                  end: 0,
                )
                .scale(begin: const Offset(1.1, 1.1)),
          ),
          if (selected)
            Icon(
              Icons.arrow_right_outlined,
              size: theme.textTheme.labelMedium?.fontSize,
              color: colorScheme.onPrimary,
            ).animate().fadeIn().slideX(
                  begin: -0.1,
                  end: 0,
                ),
        ],
      ),
    );
  }
}
