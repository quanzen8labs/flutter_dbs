import 'package:database_compare/databases/sqlite/database.dart';

import '../models/task.dart';
import 'task_repository.dart';

class SqliteBoxRepository implements TaksRepository {
  SqliteDatabase database;

  SqliteBoxRepository(this.database);

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
