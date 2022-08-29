import 'package:applobb/screen/mobile_screen_three.dart';
import 'package:applobb/screen/mobile_screen_two.dart';
import 'package:flutter/material.dart';
class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;
    switch (settings.name) {
      case '/MobileScreenTwo':
        return MaterialPageRoute(builder: (_) => MobileScreenTwo());
      case '/MobileScreenThree':
        return MaterialPageRoute(builder: (_) => MobileScreenThree());

      default:
        // If there is no such named route in the switch statement, e.g. /third
        return MaterialPageRoute(builder: (_) => Scaffold(body: SafeArea(child: Text('Route Error'))));
    }
  }
}
