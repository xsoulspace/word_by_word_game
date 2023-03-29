import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'device_runtime_type.dart';

void closeKeyboard({required final BuildContext context}) {
  final FocusScopeNode currentFocus = FocusScope.of(context);
  if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
    currentFocus.focusedChild?.unfocus();
  }
}

class SoftKeyboard {
  SoftKeyboard._();
  static Future<void> close() async {
    if (!DeviceRuntimeType.isMobile) return;
    try {
      return SystemChannels.textInput.invokeMethod('TextInput.hide');
      // ignore: empty_catches
    } on PlatformException {}
  }

  static Future<void> open() async {
    if (!DeviceRuntimeType.isMobile) return;
    try {
      return SystemChannels.textInput.invokeMethod('TextInput.show');
      // ignore: empty_catches
    } on PlatformException {}
  }
}
