import 'package:flutter/material.dart';

void showCustomDialog({
  required BuildContext context,
  required Widget title,
  required Widget content,
  required List<Widget> actions,
}) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: title,
      content: content,
      actions: actions,
    ),
  );
}
