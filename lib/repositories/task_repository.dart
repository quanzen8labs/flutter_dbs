import '../models/task.dart';

abstract class TaksRepository {
  Future<List<Task>> getAll();
  Future<Task> saveTask(Task task);
  Future<Task> deleteTask(int taskId);
}
