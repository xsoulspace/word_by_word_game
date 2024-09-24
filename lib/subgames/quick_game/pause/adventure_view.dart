import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:recase/recase.dart';
import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/gen/assets.gen.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/level_word_suggestion.dart';
import 'package:word_by_word_game/subgames/quick_game/pause/pause_screen.dart';
import 'package:word_by_word_game/subgames/quick_game/pause/widgets/widgets.dart';

class AdventureView extends HookWidget {
  const AdventureView({required this.onBack, super.key});
  final VoidCallback onBack;

  @override
  Widget build(final BuildContext context) {
    final formFactors = UiPersistentFormFactors.of(context);
    final hasMobileLayout = formFactors.isMobile;
    final state = context.read<PauseScreenState>();
    final canvasIds = context.select<GlobalGameBloc, List<CanvasDataModelId>>(
      (final c) => c.state.allCanvasData.keys
          .whereNot((final id) => id == kQuickGameMapId)
          .toList(),
    );
    final levelSaves =
        context.select<GlobalGameBloc, Map<CanvasDataModelId, LevelModel>>(
      (final c) => c.state.savedLevels,
    );
    final currentLevelId = context.select<GlobalGameBloc, CanvasDataModelId>(
      (final c) => c.state.currentLevelId,
    );
    final selectedLevelIdNotifier = useState(currentLevelId);
    final selectedLevelId = selectedLevelIdNotifier.value;

    return KeyboardBindingsViewFocusScope(
      child: Actions(
        actions: {
          DismissIntent: CallbackAction<DismissIntent>(
            onInvoke: (final _) => onBack(),
          ),
        },
        child: Row(
          children: [
            if (!hasMobileLayout) const Spacer(),
            Flexible(
              flex: hasMobileLayout ? 1 : 2,
              child: Padding(
                padding: EdgeInsets.only(
                  left: hasMobileLayout
                      ? 0.0
                      : MediaQuery.sizeOf(context).width * 0.18 / 2,
                  right: hasMobileLayout
                      ? 0.0
                      : MediaQuery.sizeOf(context).width * 0.18,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Flexible(
                          child: ViewTitle(
                            title: LocalizedMap(
                              value: {
                                Languages.en: 'New Adventure',
                                Languages.ru: 'Новое приключение',
                                Languages.it: 'Nuova Avventura',
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    UiGaps.extraLarge,
                    Flexible(
                      child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: canvasIds.length,
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        separatorBuilder: (final context, final index) =>
                            const Gap(16),
                        itemBuilder: (final context, final index) {
                          final canvasId = canvasIds[index];
                          return _LevelCard(
                            key: ValueKey(canvasId),
                            canvasId: canvasId,
                            levelSave: levelSaves[canvasId],
                            isCurrent: currentLevelId == canvasId,
                            isSelected: selectedLevelId == canvasId,
                            onSelect: () =>
                                selectedLevelIdNotifier.value = canvasId,
                            onContinue: () async =>
                                state.onContinueFromSamePlace(
                              context: context,
                              id: canvasId,
                            ),
                            onDelete: () async => state.onDeleteLevel(canvasId),
                            onStart: () async => state.onShowStartDialog(
                              context: context,
                              canvasDataId: canvasId,
                            ),
                            onRestart: () async => state.onShowStartDialog(
                              context: context,
                              canvasDataId: canvasId,
                            ),
                          );
                        },
                      ),
                    ),
                    UiGaps.large,
                    ViewBackButton(onBack: onBack),
                  ],
                )
                    .animate(delay: 150.milliseconds)
                    .fadeIn(duration: 450.milliseconds),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ViewBackButton extends StatelessWidget {
  const ViewBackButton({this.onBack, super.key});
  final VoidCallback? onBack;

  @override
  Widget build(final BuildContext context) => UiCircleCloseButton(
        onPressed: onBack ?? () => Navigator.pop(context),
      );
}

class _LevelCard extends StatelessWidget {
  const _LevelCard({
    required this.canvasId,
    required this.levelSave,
    required this.onContinue,
    required this.onDelete,
    required this.onStart,
    required this.onSelect,
    required this.isCurrent,
    required this.isSelected,
    required this.onRestart,
    super.key,
  });
  final CanvasDataModelId canvasId;
  final LevelModel? levelSave;
  final bool isCurrent;
  final bool isSelected;
  final VoidCallback onSelect;
  final VoidCallback onContinue;
  final VoidCallback onDelete;
  final VoidCallback onStart;
  final VoidCallback onRestart;
  @override
  Widget build(final BuildContext context) {
    final canvasData =
        context.read<GlobalGameBloc>().state.allCanvasData[canvasId];
    if (canvasData == null) return const SizedBox();
    final levelSave = this.levelSave;
    final playerId = levelSave?.players.currentPlayerId ?? '';
    final isSaveExists =
        playerId.isNotEmpty && playerId != PlayerProfileModel.emptyPlayerId;
    // TODO(arenukvern): l10n
    return GestureDetector(
      onTapUp: (final details) {
        onSelect();
      },
      child: FocusableActionDetector(
        onShowHoverHighlight: (final value) {
          if (value) {
            onSelect();
          }
        },
        onFocusChange: (final value) {
          if (value) {
            onSelect();
          }
        },
        child: AnimatedContainer(
          duration: 350.milliseconds,
          padding: const EdgeInsets.only(
            top: 6,
            bottom: 12,
            left: 12,
            right: 12,
          ),
          decoration: BoxDecoration(
            border: Border.fromBorderSide(
              BorderSide(
                color: isSelected
                    ? UiColors.mediumLight
                    : UiColors.light.withOpacity(0.5),
              ),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    canvasData.name.getValueByLanguage().headerCase,
                    style: const TextStyle(fontSize: 24),
                  ),
                  if (isSelected)
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Gap(12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            if (isSaveExists) ...[
                              UiStyledButton(
                                label: 'resume',
                                onPressed: onContinue,
                                textStyle: const TextStyle(fontSize: 16),
                              ),
                              UiStyledButton(
                                label: 'restart',
                                onPressed: onRestart,
                                textStyle: const TextStyle(fontSize: 16),
                              ),

                              /// maybe delete is better
                              // UiFilledButton.text(
                              //   text: 'DELETE',
                              //   onPressed: onDelete,
                              // ),
                            ] else
                              UiFilledButton.text(
                                text: 'start',
                                onPressed: onStart,
                              ),
                          ],
                        ),
                      ],
                    )
                  else
                    const Row(),
                ],
              ),
              const Gap(2),
              Row(
                children: [
                  if (isCurrent && isSaveExists)
                    // TODO(arenukvern): l10n
                    const Text('Recent play')
                  else

                    /// balancer
                    const Text(''),
                ],
              ),
              const Gap(8),
              Builder(
                builder: (final context) {
                  final players = levelSave?.players.players ?? [];
                  if (players.isEmpty) return const SizedBox();
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        // TODO(arenukvern): l10n
                        'Players:',
                        style: context.textThemeBold.titleSmall,
                      ),
                      const Gap(8),
                      Flexible(
                        child: Text(
                          players.map((final e) => e.name).join(', '),
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                    ],
                  );
                },
              ),
              // TODO(arenukvern): add gameplay time
            ],
          ),
        ),
      ),
    );
  }
}

class ViewTitle extends StatelessWidget {
  const ViewTitle({required this.title, super.key});
  final LocalizedMap title;
  @override
  Widget build(final BuildContext context) {
    final locale = useLocale(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Text(
            title.getValue(locale).toUpperCase(),
            textAlign: TextAlign.center,
            style: context.textThemeBold.displaySmall!.copyWith(
              color: UiColors.mediumDark,
              fontFamily: Assets.googleFonts.openSansBold,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ],
    );
  }
}
