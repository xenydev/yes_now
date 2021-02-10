import 'package:flutter/material.dart';
import 'package:yes_now/app/history/history.dart';
import 'package:yes_now/app/home/home.dart';

class AppRoutes {
  static const home = HomeScreen.routeName;
  static const history = HistoryScreen.routeName;
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute<dynamic>(
          builder: (_) => HomeScreen(),
        );
      case AppRoutes.history:
        return MaterialPageRoute<dynamic>(
          builder: (_) => HistoryScreen(),
        );


      default:
      // TODO: Throw
        return null;
    }
  }
}