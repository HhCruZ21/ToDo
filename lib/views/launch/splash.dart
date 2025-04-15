import 'package:flutter/material.dart';

import '../../config/images.dart';
import '../../config/routes.dart';
import '../../widgets/text_widgets.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, Routes.login);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(
                  Images.todoIcon,
                ),
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.2,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  HeadLineMediumText(
                    'Welcome to Todo+',
                    textColor: Theme.of(context).colorScheme.primary,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  BodyLargeText(
                    'We are glad to have you here',
                    textColor: Theme.of(context).colorScheme.secondary,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
