import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/generated/l10n.dart';

part 'player_profile_creator_state.dart';

class PlayerProfileCreator extends HookWidget {
  const PlayerProfileCreator({
    required this.onPlayerCreated,
    super.key,
  });
  final ValueChanged<PlayerProfileModel> onPlayerCreated;
  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    final state = _usePlayerProfileCreatorState(read: context.read);
    return Card(
      child: Padding(
        padding: EdgeInsets.all(uiTheme.spacing.medium),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(S.of(context).profileCreator),
            uiTheme.verticalBoxes.large,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                AnimatedContainer(
                  decoration: BoxDecoration(
                    color: state.color,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  duration: const Duration(milliseconds: 250),
                  width: 65,
                  height: 65,
                ),
                uiTheme.horizontalBoxes.large,
                SizedBox(
                  width: 140,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        controller: state.nameController,
                        decoration: InputDecoration.collapsed(
                          hintText: S.of(context).username,
                        ),
                      ),
                      uiTheme.verticalBoxes.large,
                      TextButton(
                        onPressed: () {
                          final profile = state.onCreateProfile();
                          if (profile == null) return;
                          onPlayerCreated(profile);
                        },
                        child: Text(S.of(context).createProfile),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
