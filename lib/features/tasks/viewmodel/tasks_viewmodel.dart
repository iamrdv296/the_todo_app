import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tasks_viewmodel.g.dart';

@riverpod
class TasksViewModel extends _$TasksViewModel {
  @override
  List<String> build() {
    return [];
  }

  void addTask(String task) {
    state = [...state, task];
  }

  void removeTask(int index) {
    state = [
      for (int i = 0; i < state.length; i++) 
        if (i != index) state[i]
    ];
  }
}
