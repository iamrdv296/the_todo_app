import 'package:flutter/material.dart';
import 'package:the_todo_app/features/tasks/model/task.dart';
import 'package:the_todo_app/theme/defaults.dart';
import 'task_card.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    super.key,
    required this.taskList,
    required this.onChanged,
    required this.onDelete,
  });

  final List<Task> taskList;
  final ValueChanged<Task> onChanged;
  final void Function(Task) onDelete;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: taskList.length,
      separatorBuilder: (context, index) => SizedBox(height: padding_md),
      itemBuilder: (context, index) {
        final task = taskList[index];

        return Dismissible(
          key: ValueKey(task.id),
          onDismissed: (_) => onDelete(task),
          child: TaskCard(task: task, onChanged: onChanged),
        );
      },
    );
  }
}
