import 'package:flutter/material.dart';
import 'package:the_todo_app/features/tasks/model/task.dart';
import 'package:the_todo_app/theme/defaults.dart';
import 'task_card.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key, required this.taskList});

  final List<Task> taskList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: taskList.length,
      separatorBuilder: (context, index) => SizedBox(height: padding_md),
      itemBuilder: (context, index) {
        final task = taskList[index];
        return TaskCard(title: task.title, isCompleted: task.isCompleted);
      },
    );
  }
}
