import 'package:flutter/material.dart';
import 'package:klassrum/ui/screens/call_room.dart';
import 'package:klassrum/ui/screens/course_details.dart';
import 'package:klassrum/ui/screens/home.dart';
import 'package:klassrum/ui/screens/splash.dart';
import 'package:klassrum/ui/screens/unknown.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/course-details':
        return MaterialPageRoute(builder: (_) => const CourseDetailsScreen());
      case '/call-room':
        return MaterialPageRoute(builder: (_) => const CallRoomScreen());
      default:
        return MaterialPageRoute(builder: (_) => const UnknownScreen());
    }
  }
}
