import 'package:flutter/material.dart';
import 'package:klassrum/ui/configs/styles.dart';
import 'package:klassrum/ui/router/app_router.dart';
import 'package:klassrum/ui/configs/themes.dart';
import 'package:klassrum/ui/screens/splash.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of our application.
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
        light: ThemeData(
          brightness: Brightness.light,
          primaryColor: AppColors.primaryColor,
        ),
        dark: ThemeData(
          brightness: Brightness.dark,
          primaryColor: AppColors.trueWhiteColor,
        ),
        initial: AdaptiveThemeMode.light,
        builder: (theme, darkTheme) => MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Klassrum',
              onGenerateRoute: AppRouter.onGenerateRoute,
              theme: theme,
              darkTheme: darkTheme,
              home: const SplashScreen(),
            ));
  }
}
