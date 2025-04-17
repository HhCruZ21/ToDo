import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/text_widgets.dart';

import '../../../models/task_model.dart';
import 'task_card.dart';

class TaskList extends StatefulWidget {
  const TaskList({required this.tasks, super.key});

  final List<Task> tasks;

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return widget.tasks.isEmpty
        ? Center(
            child: BodyLargeText(
              'No tasks added yet',
            ),
          )
        : ListView.builder(
            key: ValueKey(widget.tasks.length),
            itemCount: widget.tasks.length,
            itemBuilder: (context, index) {
              return TaskCard(
                title: widget.tasks[index].title,
                description: widget.tasks[index].description,
              );
            });
  }
}
