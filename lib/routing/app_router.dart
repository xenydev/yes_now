import 'package:flutter/material.dart';
import 'package:yes_now/app/home/home.dart';

class AppRoutes {
  static const home = HomeScreen.routeName;
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute<dynamic>(
          builder: (_) => HomeScreen(),
        );


      default:
      // TODO: Throw
        return null;
    }
  }
}