import 'package:flutter/material.dart';

class AppLocalization {
  const AppLocalization._();

  static const Locale arabic = Locale('ar');
  static const Locale german = Locale('de');
  static const Locale english = Locale('en');
  static const Locale spanish = Locale('es');
  static const Locale french = Locale('fr');
  static const Locale italian = Locale('it');
  static const Locale japanese = Locale('ja');
  static const Locale russian = Locale('ru');
  static const Locale korean = Locale('ko');
  static const Locale chineseSimplified = Locale('zh');

  static const List<Locale> supportedLocales = [
    arabic,
    german,
    english,
    spanish,
    french,
    italian,
    japanese,
    russian,
    korean,
    chineseSimplified,
  ];

  static const Locale fallbackLocale = english;

  static bool isSupported(Locale locale) {
    return supportedLocales.any(
          (supportedLocale) =>
      supportedLocale.languageCode == locale.languageCode,
    );
  }

  static Locale resolveLocale(Locale? locale) {
    if (locale == null) {
      return fallbackLocale;
    }

    return isSupported(locale) ? locale : fallbackLocale;
  }

  static bool isArabic(Locale locale) {
    return locale.languageCode == arabic.languageCode;
  }

  static bool isEnglish(Locale locale) {
    return locale.languageCode == english.languageCode;
  }
}