import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/generated/l10n.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/pack_core.dart';

part 'all_levels_screen_state.dart';

class AllLevelsScreen extends HookWidget {
  const AllLevelsScreen({super.key});

  @override
  Widget build(final BuildContext context) {
    final state = _useAllLevelsScreenState(read: context.read);
    final uiTheme = UiTheme.of(context);
    final theme = Theme.of(context);
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(uiTheme.spacing.large),
        child: Column(
          children: [
            uiTheme.verticalBoxes.large,
            Row(
              children: [
                GameBackButton(
                  onPressed: state.onGoBack,
                ),
                Expanded(
                  child: Text(
                    S.of(context).chooseLandscape,
                    style: theme.textTheme.headlineLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            uiTheme.verticalBoxes.extraLarge,
            uiTheme.verticalBoxes.extraLarge,
            Expanded(
              child: BlocBuilder<GlobalGameBloc, GlobalGameBlocState>(
                builder: (final context, final blocState) {
                  if (blocState is! LiveGlobalGameBlocState) {
                    return const SizedBox();
                  }
                  final levels = blocState.templateLevels;

                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: uiTheme.persistentFormFactors.width ==
                              WidthFormFactor.mobile
                          ? 2
                          : 3,
                      childAspectRatio: 0.8,
                    ),
                    itemCount: levels.length,
                    itemBuilder: (final context, final index) {
                      final level = levels[index];
                      return _LevelCard(
                        level: level,
                        key: ValueKey(level),
                        onPressed: state.onOpenLevelOptions,
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LevelCard extends StatelessWidget {
  const _LevelCard({
    required this.level,
    required this.onPressed,
    super.key,
  });
  final ValueChanged<TemplateLevelModel> onPressed;
  final TemplateLevelModel level;
  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => onPressed(level),
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.all(uiTheme.spacing.medium).copyWith(
                top: 60,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'assets/images/tilesets/${level.resources.tileMapIcon}_highres.png',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(level.name.getValue()),
            ),
          ],
        ),
      ),
    );
  }
}
