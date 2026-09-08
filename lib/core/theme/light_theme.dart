import 'package:aura/core/theme/styles_manager.dart';
import 'package:flutter/material.dart';

import 'color_manager.dart';
import 'font_manager.dart';

abstract final class LightTheme {
  static ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,

      scaffoldBackgroundColor: ColorManager.porcelain,

      colorScheme: const ColorScheme.light(
        primary: ColorManager.periwinkle,
        onPrimary: ColorManager.pureWhite,
        secondary: ColorManager.royalPurple,
        onSecondary: ColorManager.pureWhite,
        surface: ColorManager.pureWhite,
        onSurface: ColorManager.midnight,
        surfaceContainer: ColorManager.lavenderWhite,
        error: ColorManager.dustyRose,
        onError: ColorManager.pureWhite,
      ),

      textTheme: TextTheme(
        displayLarge: getBoldStyle(
          fontSize: FontSizeManager.s32,
          color: ColorManager.midnight,
        ),
        displayMedium: getBoldStyle(
          fontSize: FontSizeManager.s32,
          color: ColorManager.midnight,
        ),
        displaySmall: getBoldStyle(
          fontSize: FontSizeManager.s24,
          color: ColorManager.midnight,
        ),
        headlineLarge: getBoldStyle(
          fontSize: FontSizeManager.s24,
          color: ColorManager.midnight,
        ),
        headlineMedium: getSemiBoldStyle(
          fontSize: FontSizeManager.s20,
          color: ColorManager.midnight,
        ),
        headlineSmall: getSemiBoldStyle(
          fontSize: FontSizeManager.s18,
          color: ColorManager.midnight,
        ),
        titleLarge: getSemiBoldStyle(
          fontSize: FontSizeManager.s20,
          color: ColorManager.midnight,
        ),
        titleMedium: getMediumStyle(
          fontSize: FontSizeManager.s17,
          color: ColorManager.midnight,
        ),
        titleSmall: getMediumStyle(
          fontSize: FontSizeManager.s16,
          color: ColorManager.slateGray,
        ),
        bodyLarge: getRegularStyle(
          fontSize: FontSizeManager.s17,
          color: ColorManager.midnight,
        ),
        bodyMedium: getRegularStyle(
          fontSize: FontSizeManager.s16,
          color: ColorManager.slateGray,
        ),
        bodySmall: getRegularStyle(
          fontSize: FontSizeManager.s14,
          color: ColorManager.coolGray,
        ),
        labelLarge: getSemiBoldStyle(
          fontSize: FontSizeManager.s16,
          color: ColorManager.midnight,
        ),
        labelMedium: getMediumStyle(
          fontSize: FontSizeManager.s14,
          color: ColorManager.slateGray,
        ),
        labelSmall: getMediumStyle(
          fontSize: FontSizeManager.s12,
          color: ColorManager.coolGray,
        ),
      ),

      appBarTheme: const AppBarTheme(
        backgroundColor: ColorManager.porcelain,
        foregroundColor: ColorManager.midnight,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
      ),

      cardTheme: const CardThemeData(
        color: ColorManager.pureWhite,
        elevation: 0,
      ),

      dividerTheme: const DividerThemeData(
        color: ColorManager.silverMist,
        thickness: 1,
      ),

      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: ColorManager.lavenderWhite,
        border: InputBorder.none,
      ),

      iconTheme: const IconThemeData(color: ColorManager.slateGray),

      navigationBarTheme: const NavigationBarThemeData(
        backgroundColor: ColorManager.pureWhite,
        indicatorColor: ColorManager.palePeriwinkle,
        elevation: 0,
      ),

      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: ColorManager.periwinkle,
      ),
    );
  }
}
