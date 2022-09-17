import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/pack_core.dart';

part 'all_levels_screen_state.dart';

class AllLevelsScreen extends HookWidget {
  const AllLevelsScreen({super.key});

  @override
  Widget build(final BuildContext context) {
    final state = _useAllLevelsScreenState(read: context.read);
    final uiTheme = UiTheme.of(context);
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(uiTheme.spacing.large),
        child: Column(
          children: [
            const Text('All Levels'),
            uiTheme.verticalBoxes.large,
            Expanded(
              child: BlocBuilder<GlobalGameBloc, GlobalGameBlocState>(
                builder: (final context, final blocState) {
                  if (blocState is! LiveGlobalGameBlocState) {
                    return const SizedBox();
                  }
                  final levels = blocState.templateLevels;

                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
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
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => onPressed(level),
        child: Center(child: Text(level.id)),
      ),
    );
  }
}
