import 'package:aura/core/theme/styles_manager.dart';
import 'package:flutter/material.dart';

import 'app_theme_extensions.dart';
import 'color_manager.dart';
import 'font_manager.dart';

abstract final class AmoledTheme {
  static ThemeData get theme {
    return ThemeData(
      extensions: const [AppThemeExtension(isAmoled: true)],
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: ColorManager.black,
      colorScheme: const ColorScheme.dark(
        primary: ColorManager.electricBlue,
        onPrimary: ColorManager.black,
        secondary: ColorManager.electricViolet,
        onSecondary: ColorManager.ivoryWhite,
        surface: ColorManager.obsidian,
        onSurface: ColorManager.ivoryWhite,
        surfaceContainer: ColorManager.onyx,
        error: ColorManager.coralRose,
        onError: ColorManager.ivoryWhite,
      ),
      textTheme: TextTheme(
        displayLarge: getBoldStyle(
          fontSize: FontSizeManager.s32,
          color: ColorManager.ivoryWhite,
        ),
        displayMedium: getBoldStyle(
          fontSize: FontSizeManager.s32,
          color: ColorManager.ivoryWhite,
        ),
        displaySmall: getBoldStyle(
          fontSize: FontSizeManager.s24,
          color: ColorManager.ivoryWhite,
        ),
        headlineLarge: getBoldStyle(
          fontSize: FontSizeManager.s24,
          color: ColorManager.ivoryWhite,
        ),
        headlineMedium: getSemiBoldStyle(
          fontSize: FontSizeManager.s20,
          color: ColorManager.ivoryWhite,
        ),
        headlineSmall: getSemiBoldStyle(
          fontSize: FontSizeManager.s18,
          color: ColorManager.ivoryWhite,
        ),
        titleLarge: getSemiBoldStyle(
          fontSize: FontSizeManager.s20,
          color: ColorManager.ivoryWhite,
        ),
        titleMedium: getMediumStyle(
          fontSize: FontSizeManager.s17,
          color: ColorManager.ivoryWhite,
        ),
        titleSmall: getMediumStyle(
          fontSize: FontSizeManager.s16,
          color: ColorManager.ashGray,
        ),
        bodyLarge: getRegularStyle(
          fontSize: FontSizeManager.s17,
          color: ColorManager.ivoryWhite,
        ),
        bodyMedium: getRegularStyle(
          fontSize: FontSizeManager.s16,
          color: ColorManager.ashGray,
        ),
        bodySmall: getRegularStyle(
          fontSize: FontSizeManager.s14,
          color: ColorManager.graphiteGray,
        ),
        labelLarge: getSemiBoldStyle(
          fontSize: FontSizeManager.s16,
          color: ColorManager.ivoryWhite,
        ),
        labelMedium: getMediumStyle(
          fontSize: FontSizeManager.s14,
          color: ColorManager.ashGray,
        ),
        labelSmall: getMediumStyle(
          fontSize: FontSizeManager.s12,
          color: ColorManager.graphiteGray,
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: ColorManager.black,
        foregroundColor: ColorManager.ivoryWhite,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      cardTheme: const CardThemeData(
        color: ColorManager.obsidian,
        elevation: 0,
      ),
      dividerTheme: const DividerThemeData(
        color: ColorManager.charcoalDivider,
        thickness: 1,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: ColorManager.onyx,
        border: InputBorder.none,
      ),
      iconTheme: const IconThemeData(color: ColorManager.ashGray),
      navigationBarTheme: const NavigationBarThemeData(
        backgroundColor: ColorManager.obsidian,
        indicatorColor: ColorManager.onyx,
        elevation: 0,
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: ColorManager.electricBlue,
      ),
    );
  }
}
