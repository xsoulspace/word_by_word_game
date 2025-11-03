import 'package:window_manager/window_manager.dart';
import 'package:xsoulspace_ui_foundation/xsoulspace_ui_foundation.dart';

import '../../../data_resources/app_settings.src.dart';

class InitWindowManagerCmd {
  InitWindowManagerCmd({required this.appSettingsResource});
  final AppSettingsResource appSettingsResource;
  Future<void> execute() async {
    // Initialize window manager for desktop platforms
    if (DeviceRuntimeType.isNativeDesktop) {
      await windowManager.ensureInitialized();

      // Load initial settings to get window size
      final initialSettings = appSettingsResource.value;
      final initialSize = initialSettings.windowSizePreset.size;

      final windowOptions = WindowOptions(
        size: initialSize,
        title: 'Word by Word Game',
        titleBarStyle: TitleBarStyle.normal,
      );
      await windowManager.waitUntilReadyToShow(windowOptions, () async {
        await windowManager.show();
        await windowManager.focus();
      });
    }
  }
}
