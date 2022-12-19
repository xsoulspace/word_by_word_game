import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/generated/l10n.dart';
import 'package:word_by_word_game/pack_game/levels/levels.dart';
import 'package:word_by_word_game/pack_game/pause/pause.dart';

part 'level_start_dialog_state.dart';

class LevelStartDialogButton extends HookWidget {
  const LevelStartDialogButton({
    required this.level,
    super.key,
  });
  final TemplateLevelModel level;
  @override
  Widget build(final BuildContext context) {
    final state = _useLevelStartState(read: context.read, level: level);
    final theme = Theme.of(context);
    final uiTheme = UiTheme.of(context);
    final colorScheme = theme.colorScheme;

    return PortalTarget(
      visible: state.isVisible,
      portalFollower: ColoredBox(
        color: Colors.white60,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: state.onSwitchDialogVisiblity,
        ),
      ),
      child: PortalTarget(
        visible: state.isVisible,
        anchor: const Aligned(
          follower: Alignment.topCenter,
          target: Alignment.bottomCenter,
        ),
        portalFollower: _DialogScreen(
          level: level,
        ),
        child: UiFilledButton.text(
          text: S.of(context).startNewGame,
          onPressed: state.onSwitchDialogVisiblity,
        ),
      ),
    );
  }
}

class _DialogScreen extends StatelessWidget {
  const _DialogScreen({
    required this.level,
  });
  final TemplateLevelModel level;
  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    final uiTheme = UiTheme.of(context);
    final colorScheme = theme.colorScheme;
    final screenSize = MediaQuery.of(context).size;

    return SizedBox(
      width: math.min(400, screenSize.width),
      height: screenSize.height * 0.45,
      child: Card(
        child: LevelOptionsScreen(
          level: level,
        ),
      ),
    );
  }
}
