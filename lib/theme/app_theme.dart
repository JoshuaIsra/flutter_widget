import 'package:flutter/material.dart';
import 'package:flutter_widget/theme/app_colors.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.verde,
      primary: AppColors.verdeOscuro,
      secondary: AppColors.rojo,
      tertiary: AppColors.amarillo,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.verdeOscuro,
      foregroundColor: Colors.white,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.verde,
      brightness: Brightness.dark,
      primary: AppColors.verde,
      secondary: AppColors.rojo,
      tertiary: AppColors.amarillo,
      surface: AppColors.negro,
    ),
    scaffoldBackgroundColor: AppColors.negro,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.grisOscuro,
      foregroundColor: AppColors.verde,
    ),
  );
}
