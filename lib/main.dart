import 'package:flutter/material.dart';
import 'package:the_todo_app/features/tasks/view/tasks_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'theme/padding_size.dart';

const Widget homeWidget = TaskListView();

void main() {
  runApp(const ProviderScope(child: MyApp()));
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
