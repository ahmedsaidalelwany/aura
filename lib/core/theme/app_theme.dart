import 'package:flutter/material.dart';

import 'amoled_theme.dart';
import 'cafe_theme.dart';
import 'dark_theme.dart';
import 'light_theme.dart';

enum AppThemeMode {
light,
dark,
amoled,
cafe,
}

abstract final class AppTheme {
static ThemeData getTheme(AppThemeMode mode) {
switch (mode) {
case AppThemeMode.light:
return LightTheme.theme;

case AppThemeMode.dark:
return DarkTheme.theme;

case AppThemeMode.amoled:
return AmoledTheme.theme;

case AppThemeMode.cafe:
return CafeTheme.theme;
}
}

static ThemeData light() {
return LightTheme.theme;
}

static ThemeData dark() {
return DarkTheme.theme;
}

static ThemeData amoled() {
return AmoledTheme.theme;
}

static ThemeData cafe() {
return CafeTheme.theme;
}
}
