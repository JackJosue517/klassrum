import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:klassrum/ui/screens/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash:
          "https://www.postermywall.com/index.php/posterbuilder/copy/6a7c4c4c775f2c208a4448d0988994735",
      nextScreen: const LoginScreen(),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
