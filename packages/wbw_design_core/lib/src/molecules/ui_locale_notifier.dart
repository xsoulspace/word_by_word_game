import 'package:flutter/material.dart';
import 'package:wbw_locale/wbw_locale.dart';

class UiLocaleNotifier extends ValueNotifier<Locale> {
  UiLocaleNotifier(super.value);
}

final uiLocaleNotifier = UiLocaleNotifier(Locales.en);
