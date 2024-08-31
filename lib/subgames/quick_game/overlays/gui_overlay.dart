import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/overlays/gui_widgets/gui_widgets.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/elements.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/screen_animations/ui_power_points_animation.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/screen_animations/ui_tech_points_animation.dart';
import 'package:word_by_word_game/subgames/quick_game/quick_game.dart';

class GuiOverlay extends StatelessWidget {
  const GuiOverlay({super.key});

  @override
  Widget build(final BuildContext context) {
    final isLoaded = context.select<StatesStatusesCubit, bool>(
      (final bloc) => bloc.state.levelStateStatus != LevelStateStatus.loading,
    );
    final currentLevelId = context.select<GlobalGameBloc, CanvasDataModelId>(
      (final bloc) => bloc.state.currentLevelId,
    );
    final uiTheme = context.uiTheme;
    return DialogStack(
      children: [
        const Positioned.fill(
          child: IgnorePointer(child: UiTechPointsAnimation()),
        ),
        const Positioned.fill(
          child: IgnorePointer(child: UiPowerPointsAnimation()),
        ),
        const Positioned(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              UIWeatherBar(),
              UIPowerBar(),
              Gap(6),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _Statistics(),
                ],
              ),
            ],
          ),
        ),
        Builder(
          builder: (final context) {
            final bottomDialog = isLoaded && currentLevelId.isNotEmpty
                ? const GameBottomBar()
                : const SizedBox();

            return Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const MobileTutorialDialog(),
                    bottomDialog,
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class _Statistics extends StatelessWidget {
  const _Statistics();

  @override
  Widget build(final BuildContext context) {
    final isAllowedToBeVisible = context.select<StatesStatusesCubit, bool>(
      (final cubit) => cubit.state.levelStateStatus == LevelStateStatus.playing,
    );
    if (!isAllowedToBeVisible) {
      return const SizedBox.shrink();
    }
    final uiTheme = context.uiTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LastWordWidget().animate().fadeIn().slideX(begin: -0.1),
        uiTheme.verticalBoxes.medium,
        const UIPlayersSideBar(),
      ],
    );
  }
}

class UiPhaseText extends StatelessWidget {
  const UiPhaseText({super.key});

  @override
  Widget build(final BuildContext context) {
    final phaseType = context.select<LevelBloc, GamePhaseType>(
      (final s) => s.state.phaseType,
    );
    return Text(
      // TODO(arenukvern): l10n
      "Phase: ${switch (phaseType) {
        GamePhaseType.entryWord => 'Enter Word',
        GamePhaseType.selectAction => 'Select Action',
      }}",
      style: context.textTheme.labelMedium!.copyWith(
        color: context.colorScheme.tertiary.withOpacity(0.65),
        fontStyle: FontStyle.italic,
      ),
    ).animate(key: ValueKey(phaseType)).fadeIn(duration: 450.milliseconds);
  }
}
