import 'package:flutter/material.dart';
import 'package:the_todo_app/features/tasks/view/tasks_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'theme/defaults.dart';

const Widget homeWidget = TasksView();

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final EdgeInsets padding = .all(padding_bg);

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(padding: padding, child: homeWidget),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.check), label: "Tasks"),
            BottomNavigationBarItem(icon: Icon(Icons.lock_clock), label: "Pomodoro")
          ]
        ),
      ),
    );
  }
}
