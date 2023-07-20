import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/navigation/navigation.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/level_start/start_options/level_options.dart';
import 'package:word_by_word_game/subgames/quick_game/pause/pause.dart';

part 'level_start_dialog_ui_state.dart';
part 'level_start_dialog_ux_state.dart';

class LevelStartDialogButton extends HookWidget {
  const LevelStartDialogButton({
    required this.level,
    super.key,
  });
  final CanvasDataModel level;
  @override
  Widget build(final BuildContext context) {
    final uxState = _useLevelStartDialogUxState(
      read: context.read,
      canvasData: level,
    );

    final uiState = _useLevelStartUiState(
      read: context.read,
      uxState: uxState,
    );

    return MultiProvider(
      providers: [
        Provider(create: (final context) => uiState),
        Provider(create: (final context) => uxState),
      ],
      builder: (final context, final child) => PortalTarget(
        portalFollower: Visibility(
          visible: uiState.isVisible,
          child: ColoredBox(
            color: Colors.white60,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: uiState.isVisible ? uiState.onSwitchDialogVisiblity : null,
            ),
          ),
        ),
        child: PortalTarget(
          // anchor: const Aligned(
          //   follower: Alignment.topCenter,
          //   target: Alignment.bottomCenter,
          // ),
          portalFollower: Visibility(
            visible: uiState.isVisible,
            child: _DialogScreen(
              level: level,
            ),
          ),
          child: UiFilledButton.text(
            text: S.of(context).startNewGame,
            onPressed: uiState.onSwitchDialogVisiblity,
          ),
        ),
      ),
    );
  }
}

class _DialogScreen extends HookWidget {
  const _DialogScreen({
    required this.level,
  });
  final CanvasDataModel level;
  @override
  Widget build(final BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final widgetUiState = context.read<LevelStartDialogUiState>();
    final uiState = context.read<LevelStartDialogUiState>();
    final isKeyboardVisibleNotifier = useKeyboardVisibility();
    final child = Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 26),
          child: SizedBox(
            width: math.min(400, screenSize.width),
            height: math.max(340, screenSize.height * 0.45),
            child: Card(
              child: ValueListenableBuilder(
                valueListenable: widgetUiState.currentViewNotifier,
                builder: (final context, final currentView, final child) {
                  switch (currentView) {
                    case LevelStartDialogView.choosePlayers:
                      return LevelOptionsScreen(
                        level: level,
                        onCreatePlayer: widgetUiState.onCreatePlayer,
                      );
                    case LevelStartDialogView.createPlayer:
                      return CreatePlayerScreen(
                        onCancel: widgetUiState.onChoosePlayers,
                        onPlayerCreated: widgetUiState.onPlayerCreated,
                      );
                  }
                },
              ),
            ),
          ),
        ),
        if (DeviceRuntimeType.isMobile)
          Positioned(
            top: 0,
            left: 0,
            child: Tooltip(
              message: S.of(context).close,
              child: FilledButton.tonal(
                onPressed: uiState.onSwitchDialogVisiblity,
                child: const Icon(Icons.close),
              ),
            ),
          )
        else
          Positioned(
            top: 0,
            left: 0,
            child: IconButton(
              icon: const Icon(Icons.close),
              tooltip: S.of(context).close,
              onPressed: uiState.onSwitchDialogVisiblity,
            ),
          ),
      ],
    );
    if (DeviceRuntimeType.isMobile) {
      return Padding(
        padding: EdgeInsets.only(
          bottom: isKeyboardVisibleNotifier.value
              ? MediaQuery.of(context).viewInsets.bottom
              : 0,
        ),
        child: Center(
          child: SafeArea(
            child: SingleChildScrollView(
              child: child,
            ),
          ),
        ),
      );
    } else {
      return Center(child: child);
    }
  }
}
