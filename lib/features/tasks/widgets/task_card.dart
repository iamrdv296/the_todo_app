import 'package:flutter/material.dart';
import 'package:the_todo_app/theme/defaults.dart';

const paddingSize = padding_bg;
const fontSize = 25.0;
const fontWeight = FontWeight.w400;
const textAlignment = Alignment.centerLeft;

class TaskCard extends StatelessWidget {
  const TaskCard({super.key, required this.title, required this.isCompleted});

  final String title;
  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(paddingSize),

        child: Align(
          alignment: textAlignment,
          child: Text(
            title,
            style: const TextStyle(fontSize: fontSize, fontWeight: fontWeight),
          ),
        ),
      ),
    );
  }
}
