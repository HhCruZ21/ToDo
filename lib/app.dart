import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/launch/splash.dart';

import 'config/constants.dart';
import 'config/routes.dart';
import 'config/theme.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemeData.lightThemeData,
      darkTheme: AppThemeData.darkThemeData,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.generateRoute,
      navigatorKey: Constants.navigatorKey,
      home: Splash(),
    );
  }
}
