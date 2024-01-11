import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:klassrum/ui/configs/styles.dart';

class AppTheme {
  static ThemeData buildTheme() {
    var baseTheme = ThemeData.light(useMaterial3: true).copyWith(
      appBarTheme: AppTheme._buildBarTheme(),
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
    );

    return baseTheme.copyWith(
      textTheme: GoogleFonts.robotoTextTheme(baseTheme.textTheme),
    );
  }

  static AppBarTheme _buildBarTheme() {
    return const AppBarTheme(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: AppColors.whiteColor,
      elevation: 0.0,
    );
  }
}
