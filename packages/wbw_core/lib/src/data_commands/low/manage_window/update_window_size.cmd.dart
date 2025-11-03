import 'package:window_manager/window_manager.dart';
import 'package:xsoulspace_ui_foundation/xsoulspace_ui_foundation.dart';

import '../../../data_models/data_models.dart';
import '../../../data_resources/app_settings.src.dart';

class UpdateWindowSizeCommand {
  UpdateWindowSizeCommand({
    required this.appSettingsResource,
    required this.windowSizePreset,
  });
  final AppSettingsResource appSettingsResource;
  final WindowSizePreset windowSizePreset;
  Future<void> execute() async {
    if (appSettingsResource.value.windowSizePreset == windowSizePreset) return;

    // Apply window size change on desktop platforms
    if (DeviceRuntimeType.isNativeDesktop) {
      final size = windowSizePreset.size;
      if (size != null) {
        await windowManager.setSize(size, animate: true);
        // Center the window after resizing
        await windowManager.center();
      }
    }

    await appSettingsResource.setSettings(
      appSettingsResource.value.copyWith(windowSizePreset: windowSizePreset),
    );
  }
}
