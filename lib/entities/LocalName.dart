import 'package:flutter/cupertino.dart';

class LocalName {
  String ru;
  String en;
  LocalName({this.ru, this.en});

  String getName(Locale lang) =>
      <String, String>{'ru': ru, 'en': en}[lang.languageCode];
}
