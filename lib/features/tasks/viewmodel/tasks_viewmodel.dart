import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:the_todo_app/core/providers/uuid_provider.dart';
import 'package:the_todo_app/features/tasks/model/task.dart';
import 'package:uuid/uuid.dart';

part 'tasks_viewmodel.g.dart';

@riverpod
class TasksViewModel extends _$TasksViewModel {
  @override
  List<Task> build() {
    return [];
  }

  void addTask(String title) {
    final Uuid uuid = ref.read(uuidProvider);
    state = [...state, Task(title: title, id: uuid.v4())];
  }

  void removeTask(Task task) {
    state = state.where((t) => t.id != task.id).toList();
  }
  
  void updateTask(Task updatedTask) {
    state = [
      for (final task in state)
        if (updatedTask.id == task.id) updatedTask else task,
    ];
  }
}
