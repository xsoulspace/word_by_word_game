import 'package:wbw_core/wbw_core.dart';

import '../../wbw_design_core.dart';
import '../theme/color_palette.dart';

class SimpleMainMenu extends StatefulWidget {
  const SimpleMainMenu({
    required this.onStart,
    required this.onSettings,
    required this.onExit,
    required this.onPlayersAndHighscore,
    required this.onCredits,
    required this.onContinueQuick,
    required this.onNewQuick,
    required this.onContinueAdventure,
    required this.onChooseAdventure,
    super.key,
  });

  final VoidCallback onStart;
  final VoidCallback onSettings;
  final VoidCallback onExit;
  final VoidCallback onPlayersAndHighscore;
  final VoidCallback onCredits;
  final VoidCallback onContinueQuick;
  final VoidCallback onNewQuick;
  final VoidCallback onContinueAdventure;
  final VoidCallback onChooseAdventure;

  @override
  _SimpleMainMenuState createState() => _SimpleMainMenuState();
}

class _SimpleMainMenuState extends State<SimpleMainMenu> {
  @override
  Widget build(final BuildContext context) => Stack(
        fit: StackFit.expand,
        children: [
          if (DeviceRuntimeType.isNativeDesktop)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: UiColors.mediumDark,
                padding: const EdgeInsets.symmetric(
                  vertical: 6,
                  horizontal: 12,
                ),
                child: DefaultTextStyle.merge(
                  style: const TextStyle(
                    color: UiColors.offWhite,
                    fontSize: UiFontSizes.s12,
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      _KeyButton(keyTitle: 'W', title: 'Up'),
                      Gap(12),
                      _KeyButton(keyTitle: 'S', title: 'Down'),
                      Gap(12),
                      _KeyButton(keyTitle: 'Enter', title: 'Select'),
                      Gap(12),
                      _KeyButton(keyTitle: 'ESC', title: 'Back'),
                    ],
                  ),
                ),
              ),
            ),
        ],
      );
}

class _KeyButton extends StatelessWidget {
  const _KeyButton({
    required this.keyTitle,
    required this.title,
    super.key,
  });

  final String keyTitle;
  final String title;
  @override
  Widget build(final BuildContext context) => Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: UiColors.offWhite,
              borderRadius: BorderRadius.circular(UiDecorators.radiusSmall),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 6,
              vertical: 2,
            ),
            child: Text(
              keyTitle,
              style: const TextStyle(
                fontSize: UiFontSizes.s12,
                color: UiColors.mediumDark,
              ),
            ),
          ),
          const Gap(4),
          Text(title),
        ],
      );
}
