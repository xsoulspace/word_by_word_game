import 'dart:math' as math;

import 'package:flutter/foundation.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:provider/provider.dart';
import 'package:wbw_dictionaries/wbw_dictionaries.dart';
import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/router.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/level_start/start_options/level_options.dart';
import 'package:word_by_word_game/subgames/quick_game/pause/pause.dart';

part 'level_start_dialog_ui_state.dart';
part 'level_start_dialog_ux_notifier.dart';

class LevelUiUxStatesProvider extends HookWidget {
  const LevelUiUxStatesProvider({required this.builder, super.key});
  final WidgetBuilder builder;

  @override
  Widget build(final BuildContext context) {
    final uxState = useStateBuilder(
      () => LevelStartDialogUxNotifier(context: context),
    );

    final uiState = useStateBuilder(
      () => LevelStartDialogUiState(context: context, uxState: uxState),
    );
    final pauseState = useStateBuilder(
      () => PauseScreenState(
        context: context,
        uxState: uxState,
        uiState: uiState,
      ),
    );

    return Portal(
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: pauseState),
          ChangeNotifierProvider.value(value: uiState),
          ChangeNotifierProvider.value(value: uxState),
        ],
        builder: (final context, final child) => PortalTarget(
          portalFollower: Visibility(
            visible: uiState.isVisible,
            child: ColoredBox(
              color: Colors.white60,
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: uiState.isVisible
                    ? uiState.onSwitchDialogVisiblity
                    : null,
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
              child: const _DialogScreen().animate().fadeIn(
                duration: 50.milliseconds,
              ),
            ),
            child: builder(context),
          ),
        ),
      ),
    );
  }
}

class _DialogScreen extends HookWidget {
  const _DialogScreen();
  @override
  Widget build(final BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    final widgetUiState = context.read<LevelStartDialogUiState>();
    final uiState = context.read<LevelStartDialogUiState>();
    final child = Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 26),
          child: SizedBox(
            width: math.min(400, screenSize.width),
            height: math.max(400, screenSize.height * 0.45),
            child: Card(
              margin: WidthFormFactor.checkIsXs(screenSize)
                  ? EdgeInsets.zero
                  : null,
              child: ValueListenableBuilder(
                valueListenable: widgetUiState.currentViewNotifier,
                builder: (final context, final currentView, final child) =>
                    switch (currentView) {
                      LevelStartDialogView.choosePlayers => LevelOptionsScreen(
                        onCreatePlayer: widgetUiState.onCreatePlayer,
                      ),
                      LevelStartDialogView.createPlayer => CreatePlayerScreen(
                        onCancel: widgetUiState.onChoosePlayers,
                        onPlayerCreated: widgetUiState.onPlayerCreated,
                      ),
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
      return Center(
        child: SafeArea(child: SingleChildScrollView(child: child)),
      );
    } else {
      return Center(child: child);
    }
  }
}
