import 'package:flutter/material.dart';
import 'package:practise/screens/home.dart';
import 'package:practise/screens/login.dart';
import 'package:practise/screens/profile.dart';

class RoutePage {
  static const String login = '/';
  static const String home = '/homepage';
  static const String profile = '/profile';

  static Route<dynamic> generateRoute(RouteSettings route) {
    switch (route.name) {
      case login:
        return MaterialPageRoute(builder: (_) => const Login());

      case home:
        return MaterialPageRoute(builder: (_) => const Home());

      case profile:
        return MaterialPageRoute(builder: (_) => const Profile());

      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text('No routes'),
                  ),
                ));
    }
  }
}
