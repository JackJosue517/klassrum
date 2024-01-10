import 'package:flutter/material.dart';
import 'package:klassrum/ui/router/app_router.dart';
import 'package:klassrum/ui/configs/themes.dart';
import 'package:klassrum/ui/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of our application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Klassrum',
      onGenerateRoute: AppRouter.onGenerateRoute,
      theme: AppTheme.buildTheme(),
      home: const SplashScreen(),
    );
  }
}
