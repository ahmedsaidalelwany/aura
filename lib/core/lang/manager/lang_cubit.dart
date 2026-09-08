import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../app_localizations.dart';
import '../language_cache_helper.dart';
import 'lang_state.dart';

class LangCubit extends Cubit<LangState> {
  LangCubit() : super(const LangInitial());

  Future<void> loadLanguage() async {
    emit(const LangLoading());

    try {
      final String? cachedLanguage =
      await LanguageCacheHelper.getCachedLanguage();

      final Locale locale = _resolveCachedLanguage(cachedLanguage);

      emit(LangLoaded(locale));
    } catch (error) {
      emit(
        LangError(
          error.toString(),
        ),
      );
    }
  }

  Future<void> changeLanguage(Locale locale) async {
    if (!AppLocalization.isSupported(locale)) {
      emit(
        const LangError(
          'The selected language is not supported.',
        ),
      );
      return;
    }

    try {
      emit(const LangLoading());

      await LanguageCacheHelper.cacheLanguage(
        locale.languageCode,
      );

      emit(LangLoaded(locale));
    } catch (error) {
      emit(
        LangError(
          error.toString(),
        ),
      );
    }
  }

  Locale _resolveCachedLanguage(String? languageCode) {
    if (languageCode == null) {
      return AppLocalization.fallbackLocale;
    }

    final Locale cachedLocale = Locale(languageCode);

    return AppLocalization.resolveLocale(cachedLocale);
  }
}