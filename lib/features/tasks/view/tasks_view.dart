import 'package:flutter/material.dart';
import 'package:the_todo_app/features/tasks/widgets/task_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_todo_app/features/tasks/viewmodel/tasks_viewmodel.dart';

class TasksView extends ConsumerWidget {
  const TasksView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final taskList = ref.watch(tasksViewModelProvider);

    return Column(
      children: [
        Expanded(child: TaskList(taskList: taskList)),

        FloatingActionButton(
          onPressed: () =>
              ref.read(tasksViewModelProvider.notifier).addTask("Task"),
        ),
      ],
    );
  }
}
