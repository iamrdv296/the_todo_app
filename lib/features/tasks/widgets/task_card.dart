import 'package:flutter/material.dart';
import 'package:the_todo_app/theme/defaults.dart';
import 'package:the_todo_app/features/tasks/model/task.dart';

const paddingSize = padding_bg;
const fontSize = 25.0;
const fontWeight = FontWeight.w400;
const textAlignment = Alignment.centerLeft;
const checkBoxAlignment = Alignment.centerRight;

class TaskCard extends StatelessWidget {
  const TaskCard({super.key, required this.task, required this.onChanged});

  final Task task;
  final ValueChanged<Task> onChanged;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(paddingSize),

        child: Row(
          children: [
            Expanded(
              child: Text(
                task.title,
                style: const TextStyle(
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                ),
              ),
            ),

            Checkbox(
              value: task.isCompleted,
              onChanged: (value) {
                if (value != null) onChanged(task.copyWith(isCompleted: value));
              },
            ),
          ],
        ),
      ),
    );
  }
}
