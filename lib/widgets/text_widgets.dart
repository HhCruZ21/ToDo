import 'package:flutter/material.dart';

class BodyLargeText extends StatelessWidget {
  const BodyLargeText(this.text,
      {this.textColor, this.textAlignment, super.key});
  final String text;
  final Color? textColor;
  final TextAlign? textAlignment;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .bodyLarge
          ?.copyWith(color: textColor ?? Theme.of(context).colorScheme.primary),
      // textAlign: textAlignment ?? TextAlign.left,
    );
  }
}

class BodyMediumText extends StatelessWidget {
  const BodyMediumText(this.text,
      {this.textColor, this.textAlignment, super.key});
  final String text;
  final Color? textColor;
  final TextAlign? textAlignment;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .bodyMedium
          ?.copyWith(color: textColor ?? Theme.of(context).colorScheme.primary),
      // textAlign: textAlignment ?? TextAlign.left,
    );
  }
}

class BodySmallText extends StatelessWidget {
  const BodySmallText(this.text,
      {this.textColor, this.textAlignment, super.key});
  final String text;
  final Color? textColor;
  final TextAlign? textAlignment;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .bodySmall
          ?.copyWith(color: textColor ?? Theme.of(context).colorScheme.primary),
      // textAlign: textAlignment ?? TextAlign.left,
    );
  }
}

//Heading texts
class HeadLineMediumText extends StatelessWidget {
  const HeadLineMediumText(this.text,
      {this.textColor, this.textAlignment, super.key});
  final String text;
  final Color? textColor;
  final TextAlign? textAlignment;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .headlineMedium
          ?.copyWith(color: textColor ?? Theme.of(context).colorScheme.primary),
      textAlign: textAlignment ?? TextAlign.left,
    );
  }
}

class DisplayLargeText extends StatelessWidget {
  const DisplayLargeText(this.text,
      {this.textColor, this.textAlignment, super.key});
  final String text;
  final Color? textColor;
  final TextAlign? textAlignment;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .displayLarge
          ?.copyWith(color: textColor ?? Theme.of(context).colorScheme.primary),
      textAlign: textAlignment ?? TextAlign.left,
    );
  }
}
