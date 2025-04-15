import 'package:flutter/material.dart';

import '../views/dashboard/dashboard.dart';
import '../views/login/login.dart';
import '../views/signup/signup.dart';

class Routes {
  static const String login = "/login";
  static const String signup = "/signup";

  static const String dashboard = "/dashboard";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(
          builder: (context) {
            return LoginPage();
          },
        );
      case signup:
        return MaterialPageRoute(
          builder: (context) {
            return SignUpPage();
          },
        );
      case dashboard:
        return MaterialPageRoute(
          builder: (context) {
            return const DashboardPage();
          },
        );
      default:
        return MaterialPageRoute(
          builder: (context) {
            return Text('Failed to load page');
          },
        );
    }
  }
}
