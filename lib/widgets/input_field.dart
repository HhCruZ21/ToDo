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
    final theme = Theme.of(context);
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: theme.textTheme.bodyMedium?.copyWith(
          color: theme.colorScheme.primary,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2.0,
            color: theme.colorScheme.primary,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: theme.colorScheme.onPrimary,
          ),
        ),
        hintText: hintText,
        hintStyle: theme.textTheme.bodySmall?.copyWith(
          color: theme.hintColor,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 14.0,
        ),
      ),
      obscureText: obscureText ?? false,
      controller: controller,
    );
  }
}
