import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/input_field.dart';
import 'package:flutter_application_1/widgets/text_widgets.dart';

class AddTaskDialog extends StatefulWidget {
  const AddTaskDialog({super.key});

  @override
  State<AddTaskDialog> createState() => _AddTaskDialogState();
}

class _AddTaskDialogState extends State<AddTaskDialog> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController titleController = TextEditingController();
    final TextEditingController descriptionController = TextEditingController();

    return AlertDialog(
      title: const DisplayLargeText('Add Task'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InputFieldWidget(
            controller: titleController,
            labelText: 'Title',
          ),
          const SizedBox(height: 10),
          InputFieldWidget(
            controller: descriptionController,
            labelText: 'Description',
          )
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const BodyMediumText('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            // Add task logic here
          },
          child: const BodyMediumText('Add'),
        ),
      ],
    );
  }
}
