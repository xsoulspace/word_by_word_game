import 'package:flutter/material.dart';
import 'package:wbw_core/wbw_core.dart';

class LevelFeaturesNotifier extends ValueNotifier<LevelFeaturesSettingsModel> {
  // ignore: avoid_unused_constructor_parameters
  LevelFeaturesNotifier(final BuildContext context)
    : super(LevelFeaturesSettingsModel.allDisabled);
  LevelFeaturesSettingsModel get features => value;
  // ignore: use_setters_to_change_properties
  void reloadState(final LevelFeaturesSettingsModel state) {
    value = state;
  }
}
