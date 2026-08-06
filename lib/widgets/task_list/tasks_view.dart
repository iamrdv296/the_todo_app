import 'package:flutter/material.dart';
import 'package:the_todo_app/theme/padding_size.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_todo_app/widgets/task_list/task_list_viewmodel.dart';

class TaskListView extends ConsumerWidget {
  const TaskListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final taskList = ref.watch(taskListViewModelProvider);

    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            itemCount: taskList.length,
            separatorBuilder: (context, index) =>
                SizedBox(height: PaddingSize.small.value),
            itemBuilder: (context, index) => Card(child: Text(taskList[index])),
          ),
        ),

        FloatingActionButton(
          onPressed: () =>
              ref.watch(taskListViewModelProvider.notifier).addTask("Task"),
        ),
      ],
    );
  }
}
