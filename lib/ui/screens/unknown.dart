import 'package:flutter/material.dart';

class UnknownScreen extends StatelessWidget {
  const UnknownScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Unknown Screen"),
      ),
      body: const Center(
        child: Text("Vous tentez d'accéder à une route non implémentée !!!"),
      ),
    );
  }
}
