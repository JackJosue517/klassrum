import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:klassrum/ui/screens/login.dart';
import 'package:klassrum/ui/screens/on_board.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: "assets/img/logo.jpg",
      nextScreen: const LoginScreen(),
      splashIconSize: 250,
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
