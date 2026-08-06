import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'task_list_viewmodel.g.dart';

@riverpod
class TaskListViewModel extends _$TaskListViewModel {
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
