import 'package:aura/core/theme/styles_manager.dart';
import 'package:flutter/material.dart';

import 'color_manager.dart';
import 'font_manager.dart';

abstract final class DarkTheme {
  static ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,

      scaffoldBackgroundColor: ColorManager.darkNavy,

      colorScheme: const ColorScheme.dark(
        primary: ColorManager.cornflowerBlue,
        onPrimary: ColorManager.darkNavy,
        secondary: ColorManager.softViolet,
        onSecondary: ColorManager.snowWhite,
        surface: ColorManager.charcoalPurple,
        onSurface: ColorManager.snowWhite,
        surfaceContainer: ColorManager.deepPurpleGray,
        error: ColorManager.coralRose,
        onError: ColorManager.snowWhite,
      ),

      textTheme: TextTheme(
        displayLarge: getBoldStyle(
          fontSize: FontSizeManager.s32,
          color: ColorManager.snowWhite,
        ),
        displayMedium: getBoldStyle(
          fontSize: FontSizeManager.s32,
          color: ColorManager.snowWhite,
        ),
        displaySmall: getBoldStyle(
          fontSize: FontSizeManager.s24,
          color: ColorManager.snowWhite,
        ),
        headlineLarge: getBoldStyle(
          fontSize: FontSizeManager.s24,
          color: ColorManager.snowWhite,
        ),
        headlineMedium: getSemiBoldStyle(
          fontSize: FontSizeManager.s20,
          color: ColorManager.snowWhite,
        ),
        headlineSmall: getSemiBoldStyle(
          fontSize: FontSizeManager.s18,
          color: ColorManager.snowWhite,
        ),
        titleLarge: getSemiBoldStyle(
          fontSize: FontSizeManager.s20,
          color: ColorManager.snowWhite,
        ),
        titleMedium: getMediumStyle(
          fontSize: FontSizeManager.s17,
          color: ColorManager.snowWhite,
        ),
        titleSmall: getMediumStyle(
          fontSize: FontSizeManager.s16,
          color: ColorManager.lavenderGray,
        ),
        bodyLarge: getRegularStyle(
          fontSize: FontSizeManager.s17,
          color: ColorManager.snowWhite,
        ),
        bodyMedium: getRegularStyle(
          fontSize: FontSizeManager.s16,
          color: ColorManager.lavenderGray,
        ),
        bodySmall: getRegularStyle(
          fontSize: FontSizeManager.s14,
          color: ColorManager.mutedGray,
        ),
        labelLarge: getSemiBoldStyle(
          fontSize: FontSizeManager.s16,
          color: ColorManager.snowWhite,
        ),
        labelMedium: getMediumStyle(
          fontSize: FontSizeManager.s14,
          color: ColorManager.lavenderGray,
        ),
        labelSmall: getMediumStyle(
          fontSize: FontSizeManager.s12,
          color: ColorManager.mutedGray,
        ),
      ),

      appBarTheme: const AppBarTheme(
        backgroundColor: ColorManager.darkNavy,
        foregroundColor: ColorManager.snowWhite,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
      ),

      cardTheme: const CardThemeData(
        color: ColorManager.charcoalPurple,
        elevation: 0,
      ),

      dividerTheme: const DividerThemeData(
        color: ColorManager.darkDivider,
        thickness: 1,
      ),

      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: ColorManager.deepPurpleGray,
        border: InputBorder.none,
      ),

      iconTheme: const IconThemeData(color: ColorManager.lavenderGray),

      navigationBarTheme: const NavigationBarThemeData(
        backgroundColor: ColorManager.charcoalPurple,
        indicatorColor: ColorManager.mutedIndigo,
        elevation: 0,
      ),

      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: ColorManager.cornflowerBlue,
      ),
    );
  }
}
