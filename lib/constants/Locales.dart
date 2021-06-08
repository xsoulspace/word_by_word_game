import 'package:flutter/cupertino.dart';

class Locales {
  static const Locale en = Locale(Languages.en, 'EN');
  static const Locale ru = Locale(Languages.ru, 'RU');
  static const Locale it = Locale(Languages.it, 'IT');
}

class Languages {
  static const String ru = 'ru';
  static const String en = 'en';
  static const String it = 'it';
  static const List items = [
    ru,
    en,
    it,
  ];
  static List get all => items;
}
