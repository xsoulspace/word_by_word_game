import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/subgames/quick_game/overlays/gui_widgets/weather_bar.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/word_composition_bar/word_composition_bar.dart';
import 'package:word_by_word_game/subgames/subgames.dart';

class UiActionFrameSimple extends StatelessWidget {
  const UiActionFrameSimple({super.key});

  @override
  Widget build(final BuildContext context) {
    final uiTheme = context.uiTheme;
    final textTheme = context.textTheme;
    final colorScheme = context.colorScheme;

    return Column(
      children: [
        Text(
          S.of(context).applyFuelOption,
          style: textTheme.titleMedium,
        ),
        Divider(color: colorScheme.tertiary),
        UiGaps.small,
        const UiEnergyCards(),
      ],
    );
  }
}

class UiEnergyCards extends StatelessWidget with TechLevelMixin {
  const UiEnergyCards({super.key});

  @override
  Widget build(final BuildContext context) {
    final (
      isUnblocked: isPoweringEngineAvailable,
      isPlaying: _,
      isAdvancedGame: _
    ) = useTechLevelAvailable(context, TechnologyLevelIndex.poweringEngine);
    final uiTheme = context.uiTheme;
    return BlocBuilder<LevelBloc, LevelBlocState>(
      buildWhen: LevelBloc.useCheckStateEqualityBuilder(
        checkLiveState: (final previous, final current) =>
            previous.energyMultiplier != current.energyMultiplier,
      ),
      builder: (final context, final levelState) => TutorialFrame(
        highlightPosition: Alignment.topCenter,
        uiKey: TutorialUiItem.selectRefuelOption,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 100),
          child: isPoweringEngineAvailable
              ? ListView.separated(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemBuilder: (final context, final index) {
                    final type = EnergyMultiplierType.values[index];

                    return UIEnergyOptionCard(
                      levelState: levelState,
                      type: type,
                    );
                  },
                  separatorBuilder: (final context, final index) =>
                      UiGaps.medium,
                  scrollDirection: Axis.horizontal,
                  itemCount: EnergyMultiplierType.values.length,
                )
              : UIEnergyOptionCard(
                  levelState: levelState,
                  type: EnergyMultiplierType.m3,
                ),
        ).animate().fadeIn().slideY(begin: 0.1),
      ),
    );
  }
}

class UIEnergyOptionCard extends StatelessWidget {
  const UIEnergyOptionCard({
    required this.levelState,
    required this.type,
    super.key,
  });
  final EnergyMultiplierType type;
  final LevelBlocState levelState;

  @override
  Widget build(final BuildContext context) {
    final (:applyingScore, :compositionState) =
        useApplyingScoreComposable(type: type, context: context);
    // final isAllowedToUse = mechanics.score.checkPlayerAbilityToUseScore(
    //   player: player,
    //   score: applyingScore,
    // );
    // final uiTheme = UiTheme.of(context);
    // final bool isSelected =
    //     isAllowedToUse && levelState.energyMultiplier == type;
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    void onApply() {
      compositionState.onPowerSelected(type);
      TutorialFrame.sendOnClickEvent(
        uiKey: TutorialUiItem.selectRefuelOption,
        context: context,
      );
    }

    final colorScheme = theme.colorScheme;

    return UiActionButton(
      onCompleted: onApply,
      padding: const EdgeInsets.symmetric(
        vertical: 3,
        horizontal: 12,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          UiPlayerScoreIcon(size: 18, color: colorScheme.onSurface),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Text(
                  '${applyingScore.value.formattedScore}',
                  style: textTheme.headlineSmall?.copyWith(
                    color: colorScheme.tertiary,
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  UiAssetHelper.useImagePath(UiAssetsIcons.fire.path),
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

typedef ApplyingScoreComposableReturnType = ({
  ApplyingScoreType applyingScore,
  GuiWordCompositionCubit compositionState,
});

extension type ApplyingScoreType(int value) {}

ApplyingScoreComposableReturnType useApplyingScoreComposable({
  required final BuildContext context,
  required final EnergyMultiplierType type,
}) {
  final mechanics = context.read<MechanicsCollection>();
  final compositionState = context.read<GuiWordCompositionCubit>();

  final player = context.select<LevelPlayersBloc, PlayerProfileModel>(
    (final bloc) => bloc.state.currentPlayer,
  );
  final applyingScore = mechanics.score
      .getScoreForStorageEnergyByModifier(
        multiplier: type,
        availableScore: player.highscore.score,
      )
      .value
      .toInt();
  return (
    applyingScore: ApplyingScoreType(applyingScore),
    compositionState: compositionState,
  );
}

ApplyingScoreComposableReturnType useApplyingScoreGameComposable({
  required final CanvasRendererGame game,
  required final EnergyMultiplierType type,
}) {
  final dto = game.dto;
  final mechanics = dto.mechanics;
  final compositionState = dto.wordCompositionCubit;

  final player = dto.levelPlayersBloc.state.currentPlayer;
  final applyingScore = mechanics.score
      .getScoreForStorageEnergyByModifier(
        multiplier: type,
        availableScore: player.highscore.score,
      )
      .value
      .toInt();
  return (
    applyingScore: ApplyingScoreType(applyingScore),
    compositionState: compositionState,
  );
}
