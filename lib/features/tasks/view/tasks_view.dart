import 'package:flutter/material.dart';
import 'package:the_todo_app/features/tasks/widgets/add_task_modal.dart';
import 'package:the_todo_app/features/tasks/widgets/task_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_todo_app/features/tasks/viewmodel/tasks_viewmodel.dart';

class TasksView extends ConsumerWidget {
  const TasksView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final taskList = ref.watch(tasksViewModelProvider);

    final notifier = ref.read(tasksViewModelProvider.notifier);

    return Column(
      children: [
        Expanded(
          child: TaskList(
            taskList: taskList,
            onChanged: (task) => notifier.updateTask(task),
            onDelete: (task) => notifier.removeTask(task),
          ),
        ),
        FloatingActionButton(onPressed: () => _showAddTaskDialog(context, notifier)),
      ],
    );
  }

  void _showAddTaskDialog(BuildContext context, TasksViewModel notifier) {
    showDialog(
      context: context,
      builder: (context) {
        return AddTaskModal(
          onAddTask: notifier.addTask,
        );
      },
    );
  }
}
