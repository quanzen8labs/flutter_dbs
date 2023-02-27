import 'package:drift/drift.dart';

class Task extends Table {
  IntColumn get id => integer().autoIncrement()();
  DateTimeColumn get datetime => dateTime()();
  TextColumn get title => text().named('title')();
  TextColumn get description => text().named('description').nullable()();
}
