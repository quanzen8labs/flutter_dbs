import 'package:database_compare/models/task.dart';
import 'package:database_compare/repositories/task_repository.dart';

class HiveRepository implements TaksRepository {
  @override
  Future<Task> deleteTask(int taskId) {
    // TODO: implement deleteTask
    throw UnimplementedError();
  }

  @override
  Future<List<Task>> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<Task> saveTask(Task task) {
    // TODO: implement saveTask
    throw UnimplementedError();
  }
}
