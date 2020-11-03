import 'package:flutter/cupertino.dart';

class Locales {
  static Locale get en => Locale(Languages.en, 'EN');
  static Locale get ru => Locale(Languages.ru, 'RU');
}

class Languages {
  static String ru = 'ru';
  static String en = 'en';
  static final List items = [
    ru,
    en,
  ];
  static List get all => items;
}
