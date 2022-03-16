import 'package:flutter/material.dart';
import 'package:momove/screen/home_screen.dart';
import 'package:momove/screen/login/login_screen.dart';
import 'package:momove/screen/search_screen.dart';
import 'package:momove/screen/setting_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case LoginScreen.routeName:
        return LoginScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case SearchScreen.routeName:
        return SearchScreen.route();
      case SettingScreen.routeName:
        return SettingScreen.route();
      default:
        return _errorRoute();
    }
  }
}

Route _errorRoute() {
  return MaterialPageRoute(
    builder: (_) => const Scaffold(
      body: Center(child: Text("Something wrong!")),
    ),
    settings: const RouteSettings(name: "/error"),
  );
}
