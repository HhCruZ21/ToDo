import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/primary_button.dart';

import '../../config/routes.dart';
import '../../widgets/input_field.dart';
import '../../widgets/text_widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  _onLoginPressed(BuildContext context) {
    Navigator.pushReplacementNamed(context, Routes.dashboard);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DisplayLargeText(
                      'Login to Todo+',
                      textColor: Theme.of(context).colorScheme.primary,
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    BodyMediumText(
                      'Enter your credentials to continue',
                      textColor: Theme.of(context).colorScheme.onPrimary,
                    ),
                    SizedBox(height: 20.0),
                    InputFieldWidget(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      labelText: 'Email',
                    ),
                    SizedBox(height: 8.0),
                    InputFieldWidget(
                      controller: _passwordController,
                      obscureText: true,
                      labelText: 'Password',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                PrimaryButton(
                  text: 'Login',
                  onPressed: () => _onLoginPressed(context),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.signup);
                  },
                  child: BodySmallText(
                    'Don\'t have an account? Sign up',
                    textColor: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
