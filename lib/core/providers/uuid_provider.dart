import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'uuid_provider.g.dart';

@riverpod
Uuid uuid(Ref ref) => const Uuid();
