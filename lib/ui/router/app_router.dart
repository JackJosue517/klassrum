import 'package:flutter/material.dart';
import 'package:klassrum/ui/screens/home.dart';
import 'package:klassrum/ui/screens/unknown.dart';

class AppRouter {
  
  static Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(builder: (_) => const UnknownScreen());
    }

  }

}
