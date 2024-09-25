import 'package:wbw_ui_kit/wbw_ui_kit.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/warning_notification.dart';

class NotificationsOverlay extends StatelessWidget {
  const NotificationsOverlay({super.key});

  @override
  Widget build(final BuildContext context) => const Stack(
        children: [
          Positioned(
            top: 20,
            right: 20,
            left: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(child: UIWarningNotification()),
              ],
            ),
          ),
        ],
      );
}
