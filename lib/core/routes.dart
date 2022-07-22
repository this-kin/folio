import 'package:flutter/material.dart';
import 'package:portfolio/modules/home_page.dart';

class RouteGenerator {
  static const String home = '/';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomePage());
    }
  }
}
