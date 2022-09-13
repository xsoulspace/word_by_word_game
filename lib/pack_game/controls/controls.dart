import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_game/controls/widgets/widgets.dart';

class ControlsWidget extends StatelessWidget {
  const ControlsWidget({super.key});

  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    final spacing = uiTheme.spacing;

    return Padding(
      padding: EdgeInsets.all(spacing.large),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const PlayerSwitcher(),
          uiTheme.horizontalBoxes.large,
          const Expanded(child: WordCompositionRow()),
          uiTheme.horizontalBoxes.large,
          const SendWordActionButton(),
        ],
      ),
    );
  }
}
