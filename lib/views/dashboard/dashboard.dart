import 'package:flutter/material.dart';

import '../../models/task_model.dart';
import 'widgets/task_card.dart';

//On edit show dialog with edit input
//on create show dialog with input field
//on delete ask for confirmation using dialog

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
          child: SizedBox(
              width: double.infinity,
              child: SizedBox(
                child: ListView.builder(
                    itemCount: tasks.length,
                    itemBuilder: (context, index) {
                      return TaskCard(
                        title: tasks[index].title,
                        description: tasks[index].description,
                      );
                    }),
              )),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
