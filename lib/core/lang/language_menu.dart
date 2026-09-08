import 'package:flutter/material.dart';

class LanguageMenuChoice {
  final Locale locale;
  final String name;

  const LanguageMenuChoice({
    required this.locale,
    required this.name,
  });

  static const List<LanguageMenuChoice> choices = [
    LanguageMenuChoice(
      locale: Locale('ar'),
      name: 'العربية',
    ),
    LanguageMenuChoice(
      locale: Locale('de'),
      name: 'Deutsch',
    ),
    LanguageMenuChoice(
      locale: Locale('en'),
      name: 'English',
    ),
    LanguageMenuChoice(
      locale: Locale('es'),
      name: 'Español',
    ),
    LanguageMenuChoice(
      locale: Locale('fr'),
      name: 'Français',
    ),
    LanguageMenuChoice(
      locale: Locale('it'),
      name: 'Italiano',
    ),
    LanguageMenuChoice(
      locale: Locale('ja'),
      name: '日本語',
    ),
    LanguageMenuChoice(
      locale: Locale('ru'),
      name: 'Русский',
    ),
    LanguageMenuChoice(
      locale: Locale('ko'),
      name: '한국어',
    ),
    LanguageMenuChoice(
      locale: Locale('zh'),
      name: '简体中文',
    ),
  ];
}