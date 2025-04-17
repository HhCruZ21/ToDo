import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/dashboard/widgets/add_task.dart';
import 'package:flutter_application_1/widgets/show_dialog.dart';

import '../../config/routes.dart';
import '../../models/task_model.dart';
import '../../widgets/text_widgets.dart';
import 'widgets/dashboard_menu.dart';
import 'widgets/task_card.dart';
import 'widgets/task_list.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final List<Task> tasks = [
    Task(title: 'Task 1', description: 'Description for Task 1'),
    Task(title: 'Task 2', description: 'Description for Task 2'),
    Task(title: 'Task 3', description: 'Description for Task 3'),
    Task(title: 'Task 4', description: 'Description for Task 4'),
    Task(title: 'Task 5', description: 'Description for Task 5'),
  ];

  _onAddTask(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return const AddTaskDialog();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const DisplayLargeText('Dashboard'),
        actions: [const DashboardMenu()],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
          child: SizedBox(
            width: double.infinity,
            child: TaskList(
              tasks: tasks,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add Task',
        child: const Icon(Icons.add),
        onPressed: () => _onAddTask(context),
      ),
    );
  }
}
