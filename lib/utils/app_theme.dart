import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData get mainTheme {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.darkBackground,
      primaryColor: AppColors.primaryBrown,
      fontFamily: 'Sora',
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w600,
          color: AppColors.darkBackground,
        ),
        displayMedium: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w600,
          color: AppColors.darkBackground,
        ),
        headlineMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.darkBackground,
        ),
        titleLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: AppColors.darkBackground,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AppColors.darkBackground,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.darkBackground,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: AppColors.textGray,
        ),
      ),
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryBrown,
        brightness: Brightness.dark,
      ),
    );
  }
}
