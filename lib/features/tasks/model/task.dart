import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
@JsonSerializable()
class Task with _$Task {
  Task(this.title, {required this.id, this.isCompleted = false});

  @override
  final String id;

  @override
  final String title;

  @override
  final bool isCompleted;

  factory Task.fromJson(Map<String, Object?> json) => _$TaskFromJson(json);
  Map<String, Object?> toJson() => _$TaskToJson(this);
}
