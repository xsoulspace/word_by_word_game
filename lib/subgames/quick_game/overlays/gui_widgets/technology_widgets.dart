import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/level_actions_frame/actions_advanced_frame.dart';

class CurrentTechnologyButton extends StatelessWidget {
  const CurrentTechnologyButton({super.key});

  @override
  Widget build(final BuildContext context) {
    final locale = useLocale(context);
    final levelCubit = context.watch<LevelBloc>();
    final mechanics = context.read<MechanicsCollection>();
    final technologyCubit = context.watch<TechnologiesCubit>();
    final currentTechnology = technologyCubit.researchingTechnology;
    final dialogController = context.read<DialogController>();
    if (!levelCubit.featuresSettings.isTechnologiesEnabled) {
      return const SizedBox();
    }
    final technologyProgress = technologyCubit.researchingTechnologyProgress;
    final unlockCondition = technologyProgress?.unlockCondition;
    final (:isUnlocked, :percentage, :investedScore, :requiredScore) =
        mechanics.technology.checkIsUnlockedForLanguage(
      unlockCondition: unlockCondition ??
          technologyCubit.researchingTechnology?.unlockCondition,
    );
    return UiBaseButton(
      onPressed: () => dialogController
          .showTechnologiesTree(TechnologiesTreeDialogDto.nonSelectable),
      child: Container(
        padding: const EdgeInsets.only(bottom: 6, top: 2),
        decoration: BoxDecoration(
          color: Colors.green[100],
          borderRadius: const BorderRadius.horizontal(
            right: Radius.circular(24),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Gap(4),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Icon(
                isUnlocked
                    ? CupertinoIcons.lab_flask_solid
                    : CupertinoIcons.lab_flask,
              ),
            ),
            const Gap(8),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  currentTechnology?.title.getValue(locale) ??
                      const LocalizedMap(
                        value: {
                          Languages.en: 'Not researching',
                          Languages.ru: 'Не исследуется',
                          Languages.it: 'Non studiata',
                        },
                      ).getValue(locale),
                ),
                const Gap(2),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 110),
                  child: UiTechnologyLinearProgress(
                    percentage: percentage,
                    investedScore: investedScore,
                    requiredScore: requiredScore,
                  ),
                ),
              ],
            ),
            const Gap(16),
          ],
        ),
      ),
    );
  }
}
