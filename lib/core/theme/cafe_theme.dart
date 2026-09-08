import 'package:aura/core/theme/styles_manager.dart';
import 'package:flutter/material.dart';

import 'color_manager.dart';
import 'font_manager.dart';


abstract final class CafeTheme {
  static ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: ColorManager.warmIvory,
      colorScheme: const ColorScheme.light(
        primary: ColorManager.mutedPurple,
        onPrimary: ColorManager.creamWhite,
        secondary: ColorManager.terracotta,
        onSecondary: ColorManager.creamWhite,
        surface: ColorManager.creamWhite,
        onSurface: ColorManager.cocoaBlack,
        surfaceContainer: ColorManager.almondCream,
        error: ColorManager.terracotta,
        onError: ColorManager.creamWhite,
      ),
      textTheme: TextTheme(
        displayLarge: getBoldStyle(
          fontSize: FontSizeManager.s32,
          color: ColorManager.cocoaBlack,
        ),
        displayMedium: getBoldStyle(
          fontSize: FontSizeManager.s32,
          color: ColorManager.cocoaBlack,
        ),
        displaySmall: getBoldStyle(
          fontSize: FontSizeManager.s24,
          color: ColorManager.cocoaBlack,
        ),
        headlineLarge: getBoldStyle(
          fontSize: FontSizeManager.s24,
          color: ColorManager.cocoaBlack,
        ),
        headlineMedium: getSemiBoldStyle(
          fontSize: FontSizeManager.s20,
          color: ColorManager.cocoaBlack,
        ),
        headlineSmall: getSemiBoldStyle(
          fontSize: FontSizeManager.s18,
          color: ColorManager.cocoaBlack,
        ),
        titleLarge: getSemiBoldStyle(
          fontSize: FontSizeManager.s20,
          color: ColorManager.cocoaBlack,
        ),
        titleMedium: getMediumStyle(
          fontSize: FontSizeManager.s17,
          color: ColorManager.cocoaBlack,
        ),
        titleSmall: getMediumStyle(
          fontSize: FontSizeManager.s16,
          color: ColorManager.warmGray,
        ),
        bodyLarge: getRegularStyle(
          fontSize: FontSizeManager.s17,
          color: ColorManager.cocoaBlack,
        ),
        bodyMedium: getRegularStyle(
          fontSize: FontSizeManager.s16,
          color: ColorManager.warmGray,
        ),
        bodySmall: getRegularStyle(
          fontSize: FontSizeManager.s14,
          color: ColorManager.taupeGray,
        ),
        labelLarge: getSemiBoldStyle(
          fontSize: FontSizeManager.s16,
          color: ColorManager.cocoaBlack,
        ),
        labelMedium: getMediumStyle(
          fontSize: FontSizeManager.s14,
          color: ColorManager.warmGray,
        ),
        labelSmall: getMediumStyle(
          fontSize: FontSizeManager.s12,
          color: ColorManager.taupeGray,
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: ColorManager.warmIvory,
        foregroundColor: ColorManager.cocoaBlack,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      cardTheme: const CardThemeData(
        color: ColorManager.creamWhite,
        elevation: 0,
      ),
      dividerTheme: const DividerThemeData(
        color: ColorManager.beigeGray,
        thickness: 1,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: ColorManager.almondCream,
        border: InputBorder.none,
      ),
      iconTheme: const IconThemeData(color: ColorManager.warmGray),
      navigationBarTheme: const NavigationBarThemeData(
        backgroundColor: ColorManager.creamWhite,
        indicatorColor: ColorManager.lavenderCream,
        elevation: 0,
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: ColorManager.mutedPurple,
      ),
    );
  }
}
