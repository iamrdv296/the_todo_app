import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:the_todo_app/features/tasks/model/task.dart';
import 'package:uuid/uuid.dart';

part 'tasks_viewmodel.g.dart';

@riverpod
class TasksViewModel extends _$TasksViewModel {
  final _uuid = const Uuid();

  @override
  List<Task> build() {
    return [];
  }

  void addTask(String title) {
    state = [...state, Task(title, id: _uuid.v4())];
  }

  void removeTask(String id) {
    state = state.where((task) => task.id != id).toList();
  }
}