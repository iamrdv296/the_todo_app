import 'package:flutter/material.dart';
import 'package:the_todo_app/core/app/app_shell.dart';
import 'package:the_todo_app/core/navigation/app_destination.dart';
import 'package:the_todo_app/features/dummy_widget.dart';
import 'package:the_todo_app/features/tasks/view/tasks_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const Widget homeWidget = TasksView();

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<AppDestination> appDestinations = [
      AppDestination(
        icon: Icons.check,
        title: "Tasks",
        destination: TasksView(),
      ),
      AppDestination(
        icon: Icons.abc,
        title: "Dummy Example",
        destination: DummyWidget(),
      ),
    ];

    return MaterialApp(home: AppShell(appDestinations: appDestinations));
  }
}
