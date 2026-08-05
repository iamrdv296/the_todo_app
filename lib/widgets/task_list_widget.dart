import 'package:flutter/material.dart';
import 'package:the_todo_app/theme/padding_size.dart';

const dummyTaskList = ["Task #1", "Task #2", "Task #3"];

class TaskListWidget extends StatelessWidget {
  const TaskListWidget({super.key, this.taskList = const []});

  final List<String> taskList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: taskList.length,
      separatorBuilder: (context, index) =>
          SizedBox(height: PaddingSize.small.value),
      itemBuilder: (context, index) => Card(child: Text(taskList[index])),
    );
  }
}

extension DummyTaskWidget on TaskListWidget {
  static TaskListWidget createDummy() {
    return TaskListWidget(taskList: dummyTaskList);
  }
}
