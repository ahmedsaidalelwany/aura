import 'package:flutter/material.dart';

@immutable
class AppThemeExtension extends ThemeExtension<AppThemeExtension> {
  const AppThemeExtension({required this.isAmoled});

  final bool isAmoled;

  @override
  AppThemeExtension copyWith({bool? isAmoled}) {
    return AppThemeExtension(isAmoled: isAmoled ?? this.isAmoled);
  }

  @override
  AppThemeExtension lerp(
    covariant ThemeExtension<AppThemeExtension>? other,
    double t,
  ) {
    if (other is! AppThemeExtension) {
      return this;
    }

    return AppThemeExtension(isAmoled: t < 0.5 ? isAmoled : other.isAmoled);
  }
}
