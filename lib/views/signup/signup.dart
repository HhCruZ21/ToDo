import 'package:flutter/material.dart';

import '../../config/routes.dart';
import '../../widgets/input_field.dart';
import '../../widgets/primary_button.dart';
import '../../widgets/text_widgets.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  _onSignUpPressed(BuildContext context) {
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
        child: Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DisplayLargeText(
                        'Signup for Todo+',
                        textColor: Theme.of(context).colorScheme.primary,
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      BodyMediumText(
                        'Enter your details to continue',
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
                    text: 'Sign up',
                    onPressed: () => _onSignUpPressed(context),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.signup);
                    },
                    child: BodySmallText(
                      'Already have an account? Login',
                      textAlignment: TextAlign.center,
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
      ),
    );
  }
}
