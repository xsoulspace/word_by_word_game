import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:wbw_ui_kit/wbw_ui_kit.dart';
import 'package:xsoulspace_ui_foundation/xsoulspace_ui_foundation.dart';

/// A widget that allows users to select window size presets.
/// Only shown on desktop platforms that support window resizing.
class WindowSizeSelector extends StatelessWidget {
  const WindowSizeSelector({super.key});

  @override
  Widget build(final BuildContext context) {
    // Only show on desktop platforms
    if (!DeviceRuntimeType.isNativeDesktop) {
      return const SizedBox.shrink();
    }

    final locale = useLocale(context);
    final appSettingsNotifier = context.watch<AppSettingsResource>();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            LocalizedMap({
              uiLanguages.en: 'Window Size',
              uiLanguages.ru: 'Размер окна',
              uiLanguages.it: 'Dimensione finestra',
            }).getValue(locale),
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w800,
              color: UiColors.mediumLight,
            ),
          ),
          const Gap(6),

          /// {@template window_size_preset_menu}
          /// A menu button for selecting the window size preset.
          /// Shows the current preset and provides a popup menu for selection.
          /// {@endtemplate}
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: UiColors.offWhite,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: UiColors.mediumLight),
                ),
                child: PopupMenuButton<WindowSizePreset>(
                  initialValue: appSettingsNotifier.value.windowSizePreset,
                  tooltip: LocalizedMap({
                    uiLanguages.en: 'Select window size',
                    uiLanguages.ru: 'Выберите размер окна',
                    uiLanguages.it: 'Seleziona dimensione finestra',
                  }).getValue(locale),
                  onSelected: (final newPreset) async {
                    await UpdateWindowSizeCommand(
                      appSettingsResource: appSettingsNotifier,
                      windowSizePreset: newPreset,
                    ).execute();
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  color: UiColors.offWhite,
                  itemBuilder: (final context) => WindowSizePreset.values
                      .map(
                        (final preset) => PopupMenuItem<WindowSizePreset>(
                          value: preset,
                          child: Text(
                            LocalizedMap({
                              uiLanguages.en: preset.displayName,
                            }).getValue(locale),
                          ),
                        ),
                      )
                      .toList(),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        LocalizedMap({
                          uiLanguages.en: appSettingsNotifier
                              .value
                              .windowSizePreset
                              .displayName,
                        }).getValue(locale),
                        style: const TextStyle(
                          color: UiColors.dark,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Icon(Icons.arrow_drop_down, color: UiColors.dark),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
