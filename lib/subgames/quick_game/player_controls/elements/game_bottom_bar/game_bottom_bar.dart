import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/elements.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/word_composition_bar/word_composition_bar.dart';

part 'card_frosted_background.dart';

class GameBottomBar extends StatelessWidget {
  const GameBottomBar({super.key});

  @override
  Widget build(final BuildContext context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: BottomActionsNotifier.new),
          ChangeNotifierProvider(create: WordCompositionCubit.new),
        ],
        builder: (final context, final child) => _GameBottomBarCard(
          builder: (final context) => const Column(
            children: [
              UILevelCenterBar(),
              UiWordActions(),
            ],
          ),
        ),
      );
}

class _GameBottomBarCard extends StatelessWidget {
  const _GameBottomBarCard({
    required this.builder,
  });
  final WidgetBuilder builder;
  @override
  Widget build(final BuildContext context) {
    final isAllowedToBeVisible = context.select<StatesStatusesCubit, bool>(
      (final cubit) => cubit.state.levelStateStatus == LevelStateStatus.playing,
    );
    final guiBuildingNotifier = context.read<GuiBuildingNotifier>();
    final isPlacingBuilding =
        guiBuildingNotifier.value.status == GuiBuildingStatusEnum.placing;
    final persistentFormFactors = UiPersistentFormFactors.of(context);
    final screenWidth = persistentFormFactors.screenSize.width;
    final screenContstraints = BoxConstraints(maxWidth: screenWidth);
    BoxConstraints constraints;
    if (DeviceRuntimeType.isMobile) {
      constraints = screenContstraints;
    } else {
      constraints = screenWidth < 370
          ? screenContstraints
          : const BoxConstraints(maxWidth: 365);
    }
    final isCardVisible = context.select<BottomActionsNotifier, bool>(
      (final cubit) => cubit.value.isCardVisible,
    );
    final effectiveIsCardVisible =
        isCardVisible && isAllowedToBeVisible && !isPlacingBuilding;
    final uiTheme = context.uiTheme;

    return SafeArea(
      top: false,
      child: ConstrainedBox(
        constraints: constraints,
        child: AnimatedSlide(
          offset: effectiveIsCardVisible ? Offset.zero : const Offset(0, 0.92),
          duration: 200.milliseconds,
          curve: Curves.easeInCirc,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Builder(
                builder: (final context) {
                  void onTap() => context
                      .read<BottomActionsNotifier>()
                      .changeCardVisiblity();

                  return UiBaseButton(
                    tooltipMessage: effectiveIsCardVisible
                        ? S.of(context).hidePane
                        : S.of(context).showPane,
                    onPressed: () {},
                    child: effectiveIsCardVisible
                        ? TextButton(
                            onPressed: onTap,
                            child: const Icon(Icons.arrow_drop_down),
                          )
                        : OutlinedButton(
                            onPressed: onTap,
                            child: const Icon(Icons.arrow_drop_up),
                          ),
                  );
                },
              ),
              CardFrostedBackground(
                padding: EdgeInsets.only(
                  top: 2,
                  bottom: () {
                    if (DeviceRuntimeType.isMobile) {
                      final padding = MediaQuery.viewPaddingOf(context);
                      final insets = MediaQuery.viewInsetsOf(context);
                      final bottom = padding.bottom + insets.bottom;
                      if (bottom > 0) {
                        return bottom + 6;
                      }
                    }
                    return uiTheme.spacing.medium;
                  }(),
                ),
                constraints: constraints,
                child: Builder(builder: builder),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
