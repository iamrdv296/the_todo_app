import 'package:flutter/material.dart';
import 'package:the_todo_app/widgets/task_list_widget.dart';
import 'theme/padding_size.dart';
import 'widgets/dummy_widget.dart';

const Widget homeWidget = TaskListWidget();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final PaddingSize paddingSize = .large;
    final EdgeInsets padding = .all(paddingSize.value);

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(padding: padding, child: homeWidget),
        ),
      ),
    );
  }
}
