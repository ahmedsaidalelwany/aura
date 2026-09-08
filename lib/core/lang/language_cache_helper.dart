import 'package:shared_preferences/shared_preferences.dart';

class LanguageCacheHelper {
  const LanguageCacheHelper._();

  static const String _languageKey = 'language_code';

  static Future<void> cacheLanguage(String languageCode) async {
    final SharedPreferences preferences =
    await SharedPreferences.getInstance();

    await preferences.setString(_languageKey, languageCode);
  }

  static Future<String?> getCachedLanguage() async {
    final SharedPreferences preferences =
    await SharedPreferences.getInstance();

    return preferences.getString(_languageKey);
  }

  static Future<void> clearCachedLanguage() async {
    final SharedPreferences preferences =
    await SharedPreferences.getInstance();

    await preferences.remove(_languageKey);
  }
}