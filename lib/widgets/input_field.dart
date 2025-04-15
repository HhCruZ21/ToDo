import 'package:flutter/material.dart';

class InputFieldWidget extends StatelessWidget {
  const InputFieldWidget(
      {required this.controller,
      required this.labelText,
      this.hintText,
      this.keyboardType,
      this.obscureText,
      super.key});

  final TextEditingController controller;
  final String labelText;

  final String? hintText;
  final TextInputType? keyboardType;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(color: Theme.of(context).colorScheme.primary),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              width: 2.0, color: Theme.of(context).colorScheme.primary),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Theme.of(context).colorScheme.onPrimary),
        ),
        hintText: hintText,
      ),
      obscureText: obscureText ?? false,
      controller: controller,
    );
  }
}
