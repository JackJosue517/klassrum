import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

class AppColors {
  static bool darkMode = (AdaptiveTheme.getThemeMode().toString() == "AdaptiveThemeMode.dark")?true:false;

  static Color get cardColor  {
    return darkMode ? const Color.fromRGBO(66, 66, 66, 1) : const Color(0xFFF1F1F1);
  }

  static Color get textgrayColor{
    print(darkMode);
    return darkMode ? const Color(0xFFF1F1F1) : const Color(0xFF625F68);
  }

  static Color get trueWhiteColor {
    return darkMode ? const Color(0x00000000) : const Color(0xFFFFFFFF);
  }
  static const Color primaryColor = Color(0xFF0B66D0);
  static const Color buttonColor = Color(0xFF0B66D0);
  static const Color buttonTextColor = Color(0xFFFFFFFF);
  static const Color redColor = Color.fromARGB(255, 255, 27, 27);
  static const Color darkColor = Color(0xFF363C32);
  static const Color greyColor = Color.fromRGBO(66, 66, 66, 1);
  static const Color transparentColor = Colors.transparent;
  static const Color blackColor = Color(0x00000000);
  static const Color greenColor = Color.fromARGB(255, 52, 245, 58);
}

class AppText {
  static TextStyle headline1 = GoogleFonts.roboto(
    fontSize: 34,
  );

  static TextStyle headline2 = GoogleFonts.roboto(
    fontSize: 30,
  );

  static TextStyle headline3 = GoogleFonts.roboto(
    fontSize: 26,
  );

  static TextStyle headline4 = GoogleFonts.roboto(
    fontSize: 22,
  );

  static TextStyle headline5 = GoogleFonts.roboto(
    fontSize: 18,
  );

  static TextStyle headline6 = GoogleFonts.roboto(
    fontSize: 14,
  );

  static TextStyle headline7 = GoogleFonts.roboto(
    fontSize: 10,
  );
}
