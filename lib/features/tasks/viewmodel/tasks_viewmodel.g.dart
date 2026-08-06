// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TasksViewModel)
final tasksViewModelProvider = TasksViewModelProvider._();

final class TasksViewModelProvider
    extends $NotifierProvider<TasksViewModel, List<Task>> {
  TasksViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tasksViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tasksViewModelHash();

  @$internal
  @override
  TasksViewModel create() => TasksViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Task> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Task>>(value),
    );
  }
}

String _$tasksViewModelHash() => r'4821f941d1b6dc28348d7865fe2fb5919a2897c8';

abstract class _$TasksViewModel extends $Notifier<List<Task>> {
  List<Task> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<List<Task>, List<Task>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<Task>, List<Task>>,
              List<Task>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
