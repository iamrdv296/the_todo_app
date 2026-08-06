import 'package:flutter/material.dart';
import 'package:the_todo_app/theme/defaults.dart';

const paddingSize = padding_bg;
const fontSize = 25.0;
const fontWeight = FontWeight.w400;
const textAlignment = Alignment.centerLeft;
const checkBoxAlignment = Alignment.centerRight;

class TaskCard extends StatelessWidget {
  const TaskCard({super.key, required this.title, required this.isCompleted, required this.onCompletedChanged});

  final String title;
  final bool isCompleted;
  final void Function(bool) onCompletedChanged;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(paddingSize),

        child: Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                ),
              ),
            ),
            
            Checkbox(
              value: isCompleted,
              onChanged: (value) {
                if (value != null) onCompletedChanged(value);
              },
            ),
          ],
        )
      )
    );
  }
}
