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
        SizedBox(
          height: _LevelCard.dimension,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (final context, final index) {
              final canvasId = canvasIds[index];
              return _LevelCard(
                key: ValueKey(canvasId),
                canvasId: canvasId,
                levelSave: levelSaves[canvasId],
                isCurrent: currentLevelId == canvasId,
                isSelected: selectedLevelId == canvasId,
                onSelect: () => selectedLevelIdNotifier.value = canvasId,
              );
            },
            separatorBuilder: (final context, final index) => const Gap(16),
            itemCount: canvasIds.length,
          ),
        ).animate(delay: 150.milliseconds).fadeIn(duration: 450.milliseconds),
        const Gap(24),
        Builder(
          builder: (final context) {
            final selectedLevel = levelSaves[selectedLevelId];
            final selectedLevelPlayerId =
                selectedLevel?.players.currentPlayerId ?? '';
            final isSaveExists = selectedLevel != null &&
                selectedLevelPlayerId.isNotEmpty &&
                selectedLevelPlayerId != PlayerProfileModel.emptyPlayerId;
            Future<void> onStart() async => state.onShowStartDialog(
                  context: context,
                  canvasDataId: selectedLevelId,
                );
            final backButton =
                UiFilledButton.text(text: 'BACK', onPressed: onBack);
            final resumeButton = isSaveExists
                ? UiFilledButton.text(
                    text: 'RESUME',
                    onPressed: () async => state.onContinueFromSamePlace(
                      context: context,
                      id: selectedLevelId,
                    ),
                  )
                : UiFilledButton.text(
                    text: 'START',
                    onPressed: onStart,
                  );
            // TODO(arenukvern): replace with delete button
            final restartButton = UiFilledButton.text(
              text: 'RESTART',
              onPressed: onStart,
            );

            final child = Column(
              children: [
                resumeButton,
                if (isSaveExists) ...[
                  const Gap(4),
                  restartButton,
                ],
                const Gap(4),
                backButton,
              ],
            );
            return child
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
    required this.isCurrent,
    required this.isSelected,
    required this.onSelect,
    super.key,
  });
  final CanvasDataModelId canvasId;
  final LevelModel? levelSave;
  final bool isCurrent;
  final bool isSelected;
  final VoidCallback onSelect;
  static const dimension = 100.0;
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
    return UiBaseButton(
      onPressed: onSelect,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Material(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              color: isSelected ? null : Colors.red,
              elevation: isSelected ? 8 : 0,
              child: const Padding(
                padding: EdgeInsets.only(
                  top: 12,
                  bottom: 12,
                  left: 8,
                  right: 8,
                ),
                child: Column(
                  children: [
                    // TODO(arenukvern): add players,
                    // TODO(arenukvern): add gameplay time
                    Spacer(),
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (isSelected)
                Icon(
                  Icons.play_arrow_rounded,
                  color: context.colorScheme.tertiary,
                ),
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
                ),
            ],
          ),
          if (isCurrent && isSaveExists)
            const Text('Recent play')
          else

            /// balancer
            const Text(''),
        ],
      ),
    );
  }
}
