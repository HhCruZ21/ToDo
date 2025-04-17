import 'package:flutter/material.dart';

import '../../../widgets/input_field.dart';
import '../../../widgets/show_dialog.dart';
import '../../../widgets/text_widgets.dart';

class TaskCard extends StatefulWidget {
  const TaskCard({required this.title, required this.description, super.key});

  final String title;
  final String description;

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  _onEdit(BuildContext context) {
    final TextEditingController titleController = TextEditingController();
    final TextEditingController descriptionController = TextEditingController();
    showCustomDialog(
        context: context,
        title: const DisplayLargeText('Edit Task'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InputFieldWidget(
              controller: titleController,
              labelText: 'Title',
            ),
            const SizedBox(
              height: 8,
            ),
            InputFieldWidget(
                controller: descriptionController, labelText: 'Description'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const BodyMediumText('Cancel'),
          ),
          const SizedBox(width: 4),
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const BodyMediumText('Save'),
          ),
        ]);
  }

  _onDelete(BuildContext context) {
    showCustomDialog(
      context: context,
      title: const DisplayLargeText('Delete Task'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BodyMediumText('Are you sure you want to delete this task?'),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const BodyMediumText('Cancel'),
        ),
        const SizedBox(width: 4),
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const BodyMediumText('Save'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        title: BodyMediumText(widget.title),
        subtitle: BodySmallText(widget.description),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.edit, color: Colors.blueAccent),
              onPressed: () => _onEdit(context),
              tooltip: 'Edit',
            ),
            IconButton(
              icon: const Icon(Icons.delete, color: Colors.redAccent),
              onPressed: () => _onDelete(context),
              tooltip: 'Delete',
            ),
          ],
        ),
      ),
    );
  }
}
