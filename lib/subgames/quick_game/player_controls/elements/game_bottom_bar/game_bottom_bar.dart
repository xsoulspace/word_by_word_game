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
    final guiBuildingNotifier = context.watch<GuiBuildingNotifier>();
    final guiFocusableObjectsNotifier =
        context.watch<GuiFocusableObjectsNotifier>();
    final isPlacingBuilding = guiBuildingNotifier.isPlacing;
    final isFocusingOnBuilding = guiFocusableObjectsNotifier.isFocusing;
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
    final effectiveIsCardVisible = isCardVisible && isAllowedToBeVisible;
    final uiTheme = context.uiTheme;
    if (isPlacingBuilding) return const _UiBuildingPlacementText();
    if (isFocusingOnBuilding) return const _UiFocusableObjectsRow();

    return SafeArea(
      top: false,
      child: ConstrainedBox(
        constraints: constraints,
        child: AnimatedSlide(
          offset: effectiveIsCardVisible ? Offset.zero : const Offset(0, 0.80),
          duration: 200.milliseconds,
          curve: Curves.easeInCirc,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 80,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Builder(
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
                    ),
                  ),
                  const Spacer(),
                  const UiCurrentPlayerCard(),
                  const Spacer(),
                  const SizedBox(
                    width: 80,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: UiPauseButton(),
                    ),
                  ),
                  const Gap(20),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Flexible(
                    child: CardFrostedBackground(
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
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _UiBuildingPlacementText extends StatelessWidget {
  const _UiBuildingPlacementText({super.key});

  @override
  Widget build(final BuildContext context) {
    final guiBuildingNotifier = context.watch<GuiBuildingNotifier>();
    return Column(
      children: [
        Text(
          // TODO(arenukvern): l10n
          'Place a ${guiBuildingNotifier.value.type.name}',
          style: context.textThemeBold.displaySmall,
        ),
        const Gap(16),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 270),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  // TODO(arenukvern): l10n
                  'Click near Hot Air Balloon to place',
                  style: context.textTheme.bodyMedium!.copyWith(
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        const Gap(12),
        TextButton(
          onPressed: guiBuildingNotifier.cancelPlacing,
          child: Text(
            'Cancel',
            style: context.errorTextTheme.bodyLarge,
          ),
        ),
        const Gap(24),
      ],
    ).animate().fadeIn().slideY(begin: 0.45);
  }
}

class _UiFocusableObjectsRow extends StatelessWidget {
  const _UiFocusableObjectsRow({super.key});

  @override
  Widget build(final BuildContext context) {
    final guiFocusableObjectsNotifier =
        context.watch<GuiFocusableObjectsNotifier>();
    return Column(
      children: [
        Text(
          // TODO(arenukvern): l10n
          'Place a ${guiFocusableObjectsNotifier.value.nearestObjectIds}',
          style: context.textThemeBold.displaySmall,
        ),
        const Gap(16),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 270),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  // TODO(arenukvern): l10n
                  'Click near Hot Air Balloon to place',
                  style: context.textTheme.bodyMedium!.copyWith(
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        const Gap(12),
        TextButton(
          onPressed: guiFocusableObjectsNotifier.cancelFocusing,
          child: Text(
            'Cancel',
            style: context.errorTextTheme.bodyLarge,
          ),
        ),
        const Gap(24),
      ],
    ).animate().fadeIn().slideY(begin: 0.45);
  }
}

class UiCurrentPlayerCard extends StatelessWidget {
  const UiCurrentPlayerCard({super.key});

  @override
  Widget build(final BuildContext context) => Column(
        children: [
          Card(
            elevation: 1,
            child: AnimatedSize(
              duration: 1.seconds,
              child: const Padding(
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 2,
                  bottom: 4,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    UIMobilePlayerName(),
                    Gap(6),
                    UIMobilePlayerScore(),
                  ],
                ),
              ),
            ),
          ),
          const Gap(3),
        ],
      );
}
