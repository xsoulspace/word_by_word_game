import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/subgames/quick_game/pause/pause_screen.dart';
import 'package:word_by_word_game/subgames/quick_game/pause/widgets/widgets.dart';

class AdventureView extends HookWidget {
  const AdventureView({required this.onBack, super.key});
  final VoidCallback onBack;

  @override
  Widget build(final BuildContext context) {
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
    final formFactor = UiPersistentFormFactors.of(context);
    final selectedLevelIdNotifier = useState(currentLevelId);
    final selectedLevelId = selectedLevelIdNotifier.value;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Spacer(),
        Text(
          // TODO(arenukvern): l10n
          'Choose Adventure'.toUpperCase(),
          textAlign: TextAlign.center,
          style: context.textThemeBold.displaySmall!.copyWith(
            color: const Color.fromARGB(255, 241, 244, 241),
            shadows: [
              const Shadow(blurRadius: 1),
              const Shadow(blurRadius: 1),
              const Shadow(blurRadius: 1),
              const Shadow(blurRadius: 1, color: Colors.black38),
            ],
          ),
        )
            .animate(delay: 50.milliseconds)
            .fadeIn(duration: 350.milliseconds)
            .slideY(begin: -0.1),
        const Spacer(),
        ConstrainedBox(
          constraints: const BoxConstraints(
            minHeight: 300,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ...List.generate(canvasIds.length, (final index) {
                  final canvasId = canvasIds[index];
                  return _LevelCard(
                    key: ValueKey(canvasId),
                    canvasId: canvasId,
                    levelSave: levelSaves[canvasId],
                    isCurrent: currentLevelId == canvasId,
                    isSelected: selectedLevelId == canvasId,
                    onSelect: () => selectedLevelIdNotifier.value = canvasId,
                    onContinue: () async => state.onContinueFromSamePlace(
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
                }),
              ],
            ),
          ).animate(delay: 150.milliseconds).fadeIn(duration: 450.milliseconds),
        ),
        const Gap(24),
        Builder(
          builder: (final context) {
            final backButton =
                UiFilledButton.text(text: 'BACK', onPressed: onBack);

            return Column(children: [backButton])
                .animate(delay: 200.milliseconds)
                .fadeIn(duration: 450.milliseconds);
          },
        ),
        const Spacer(),
      ],
    );
  }
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
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Material(
            animationDuration: 350.milliseconds,
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              side: isSelected
                  ? BorderSide(
                      color: context.colorScheme.primary,
                    )
                  : BorderSide.none,
            ),
            elevation: isSelected ? 8 : 0,
            child: AnimatedSize(
              duration: 350.milliseconds,
              child: Container(
                constraints: const BoxConstraints(
                  maxWidth: 280,
                ),
                padding: const EdgeInsets.only(
                  top: 16,
                  bottom: 24,
                  left: 12,
                  right: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (isSelected)
                          Icon(
                            Icons.play_arrow_rounded,
                            color: context.colorScheme.tertiary,
                          ).animate().fadeIn(),
                        const Gap(8),
                        Flexible(
                          child: Text(
                            canvasData.name.getValueByLanguage().toUpperCase(),
                            style: context.textThemeBold.titleLarge,
                          ),
                        ),
                        const Gap(8),
                        if (isSelected)
                          RotatedBox(
                            quarterTurns: 2,
                            child: Icon(
                              Icons.play_arrow_rounded,
                              color: context.colorScheme.tertiary,
                            ),
                          ).animate().fadeIn(),
                      ],
                    ),
                    const Gap(2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (isCurrent && isSaveExists)
                          const Text('Recent play')
                        else

                          /// balancer
                          const Text(''),
                      ],
                    ),
                    const Gap(8),
                    Row(
                      children: [
                        Text(
                          'Players:',
                          style: context.textThemeBold.titleSmall,
                        ),
                        const Gap(8),
                        Flexible(
                          child: Text(
                            levelSave?.players.players
                                    .map((final e) => e.name)
                                    .join(', ') ??
                                '',
                          ),
                        ),
                      ],
                    ),
                    // TODO(arenukvern): add gameplay time

                    AnimatedSize(
                      duration: 350.milliseconds,
                      alignment: Alignment.bottomCenter,
                      child: isSelected
                          ? Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Gap(12),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    if (isSaveExists) ...[
                                      UiFilledButton.text(
                                        text: 'RESUME',
                                        onPressed: onContinue,
                                      ),
                                      UiFilledButton.text(
                                        text: 'RESTART',
                                        onPressed: onRestart,
                                      ),

                                      /// maybe delete is better
                                      // UiFilledButton.text(
                                      //   text: 'DELETE',
                                      //   onPressed: onDelete,
                                      // ),
                                    ] else
                                      UiFilledButton.text(
                                        text: 'START',
                                        onPressed: onStart,
                                      ),
                                  ],
                                ),
                              ],
                            ).animate().fadeIn(duration: 550.milliseconds)
                          : const Row(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
