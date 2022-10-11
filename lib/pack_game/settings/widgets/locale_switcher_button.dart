import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart' as intl;
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';

part 'locale_switcher_button_state.dart';

class LocaleSwitcherButton extends HookWidget {
  const LocaleSwitcherButton({
    final Key? key,
  }) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    final state = _useLocaleSwitcherButtonState(read: context.read);

    return DropdownButton<Locale>(
      value: state.locale,
      onChanged: state.onUpdateLocale,
      items: namedLocalesMap.values
          .map(
            (final e) => DropdownMenuItem<Locale>(
              value: e.locale,
              key: ValueKey(e.code),
              child: SettingsText(text: e.name),
            ),
          )
          .toList(),
    );
  }
}

class SettingsText extends StatelessWidget {
  const SettingsText({
    required this.text,
    super.key,
  });
  final String text;
  @override
  Widget build(final BuildContext context) {
    return Text(text);
  }
}
