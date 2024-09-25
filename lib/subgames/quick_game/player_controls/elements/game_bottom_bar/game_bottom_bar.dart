import 'package:blur/blur.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/level_word_suggestion.dart';
import 'package:word_by_word_game/subgames/quick_game/game_renderer/components/focus_surface_drawer.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/elements.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/game_bottom_bar/ui_bottom_energy_animation.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/level_actions_frame/focused_object_actions_view.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/word_composition_bar/word_composition_bar.dart';

part 'card_frosted_background.dart';

class GameBottomBar extends StatelessWidget {
  const GameBottomBar({super.key});

  @override
  Widget build(final BuildContext context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: BottomActionsNotifier.new),
        ],
        builder: (final context, final child) => Stack(
          children: [
            const Positioned.fill(
              child: IgnorePointer(
                child: UiBottomEnergyAnimation(),
              ),
            ),
            UiGameBottomBarCard(
              builder: (final context) => const Column(
                children: [
                  UILevelCenterBar(),
                  UiWordActions(),
                ],
              ),
            ),
          ],
        ),
      );
}

class UiGameBottomBarCard extends StatelessWidget {
  const UiGameBottomBarCard({
    required this.builder,
    super.key,
  });
  final WidgetBuilder builder;
  static const maxWidth = 365.0;
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
          : const BoxConstraints(maxWidth: maxWidth);
    }
    final isCardVisible = context.select<BottomActionsNotifier, bool>(
      (final cubit) => cubit.value.isCardVisible,
    );
    final effectiveIsCardVisible = isCardVisible && isAllowedToBeVisible;
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
              if (isAllowedToBeVisible)
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

                            return UiTooltip(
                              tooltip: effectiveIsCardVisible
                                  ? S.of(context).hidePane
                                  : S.of(context).showPane,
                              child: UiBaseButton(
                                onPressed: () {},
                                builder: (
                                  final context,
                                  final focused,
                                  final onlyFocused,
                                ) =>
                                    effectiveIsCardVisible
                                        ? TextButton(
                                            onPressed: onTap,
                                            child: const Icon(
                                              Icons.arrow_drop_down,
                                            ),
                                          )
                                        : OutlinedButton(
                                            onPressed: onTap,
                                            child:
                                                const Icon(Icons.arrow_drop_up),
                                          ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    const Spacer(),
                    const UiCurrentPlayerCard().animate().fadeIn(),
                    const Spacer(),
                    const SizedBox(width: 80),
                    const Gap(20),
                  ],
                )
              else
                const Gap(80),
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
                          return UiSpace.medium;
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
    final canvasCubit = context.watch<CanvasCubit>();
    final nearestObjectIds = guiFocusableObjectsNotifier.value.nearestObjectIds;
    // TODO(arenukvern): add main character
    final playerCharacter = canvasCubit.canvasData.playerObject;
    final focusedObjectId = guiFocusableObjectsNotifier.value.focusedObjectId;
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 250),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  // TODO(arenukvern): l10n
                  'Choose a character or building to focus on',
                  style: context.textTheme.bodyMedium!.copyWith(
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        const Gap(16),
        SizedBox(
          height: 80,
          child: Center(
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: nearestObjectIds.length + 1,
              separatorBuilder: (final context, final index) => const Gap(12),
              itemBuilder: (final context, final index) {
                if (index == 0) {
                  return _UiToFocusCard(
                    onPressed: guiFocusableObjectsNotifier.choosePlayer,
                    tileId: playerCharacter.tileId,
                    isFocused: focusedObjectId.isEmpty,
                    // TODO(arenukvern): add image
                  );
                }
                final objectId = nearestObjectIds[index - 1];
                final object = canvasCubit.objects[objectId];
                if (object == null) return const SizedBox.shrink();
                return _UiToFocusCard(
                  onPressed: () =>
                      guiFocusableObjectsNotifier.setFocusedObjectId(objectId),
                  tileId: object.tileId,
                  isFocused: focusedObjectId == objectId,
                  // TODO(arenukvern): add image
                );
              },
            ),
          ),
        ),
        const Gap(6),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: guiFocusableObjectsNotifier.cancelFocusing,
              child: Text(
                'Cancel',
                style: context.errorTextTheme.bodyLarge,
              ),
            ),
            UiOutlinedButton(
              onPressed: guiFocusableObjectsNotifier.confirmChoosing,
              child: Text(
                'Confirm',
                style: context.textTheme.bodyLarge,
              ),
            ),
          ],
        ),
        const Gap(24),
      ],
    ).animate().fadeIn().slideY(begin: 0.45);
  }
}

class _UiToFocusCard extends StatelessWidget {
  const _UiToFocusCard({
    required this.tileId,
    required this.onPressed,
    this.child,
    this.isFocused = false,
  });
  final TileId tileId;
  final Widget? child;
  final VoidCallback onPressed;
  final bool isFocused;
  @override
  Widget build(final BuildContext context) {
    final locale = useLocale(context);
    return UiBaseButton(
      onPressed: onPressed,
      builder: (final context, final focused, final onlyFocused) => Container(
        decoration: BoxDecoration(
          color: context.colorScheme.surface,
          borderRadius: BorderRadius.circular(24),
          border: isFocused
              ? Border.all(color: kFocusObjectColor.color, width: 6)
              : null,
        ),
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(tileId.localizedTitle(locale)),
            child ?? const SizedBox.shrink(),
          ],
        ),
      ),
    );
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
