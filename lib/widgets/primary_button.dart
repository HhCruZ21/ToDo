import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/text_widgets.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({required this.text, required this.onPressed, super.key});

  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onPressed,
        child: BodyLargeText(text),
      ),
    );
  }
}
