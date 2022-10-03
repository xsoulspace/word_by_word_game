import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/abstract/NamedLocale.dart';
import 'package:word_by_word_game/shared_utils_models/locale_model.dart';

class LocaleSwitcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<LocaleModel>(builder: (context, localeModel, child) {
      return DropdownButton<NamedLocale>(
          isExpanded: true,
          value: localeModel.currentNamedLocale,
          items: LocaleModelConsts.namedLocales.map((namedLocale) {
            return DropdownMenuItem<NamedLocale>(
              key: Key(namedLocale.name),
              value: namedLocale,
              child: Text(
                namedLocale.name,
              ),
            );
          }).toList(),
          onChanged: (NamedLocale? namedLocale) async {
            await localeModel.switchLang(namedLocale?.locale);
          });
    });
  }
}
