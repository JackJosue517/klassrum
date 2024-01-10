import 'package:flutter/material.dart';
import 'package:klassrum/ui/configs/styles.dart';

class UnknownScreen extends StatelessWidget {
  const UnknownScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Unknown Screen"),
      ),
      body: Center(
        child: Text(
          "Vous tentez d'accéder à une route non implémentée !!!",
          style: AppText.headline4.copyWith(),
        ),
      ),
    );
  }
}
