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
    extends $NotifierProvider<TasksViewModel, List<String>> {
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
  Override overrideWithValue(List<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<String>>(value),
    );
  }
}

String _$tasksViewModelHash() => r'776102b4742891f01a9d4a7e1240a24d1b06f03e';

abstract class _$TasksViewModel extends $Notifier<List<String>> {
  List<String> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<List<String>, List<String>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<String>, List<String>>,
              List<String>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
