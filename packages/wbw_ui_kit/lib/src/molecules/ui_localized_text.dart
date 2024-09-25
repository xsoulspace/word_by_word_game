import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

import 'ui_locale_notifier.dart';

Locale useLocale(
  final BuildContext context, {
  final bool listen = true,
}) =>
    Provider.of<UiLocaleNotifier>(context, listen: listen).value;

class UiLocalizedText extends HookWidget {
  const UiLocalizedText({super.key});

  @override
  Widget build(final BuildContext context) {
    final text = useLocale(context);
    return Text(text.languageCode);
  }
}
