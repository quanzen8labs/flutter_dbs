import 'package:database_compare/databases/sqlite/database.dart';
import 'package:database_compare/models/screen_type.dart';
import 'package:database_compare/pages/to_do_screen.dart';
import 'package:database_compare/repositories/sqlite_task_repository.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  final SqliteDatabase sqliteDatabase;
  const ListScreen({super.key, required this.sqliteDatabase});

  @override
  Widget build(BuildContext context) {
    List<ScreenType> items = [
      ScreenType.sqlite,
      ScreenType.hive,
      ScreenType.objectBox,
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Databases Demo'),
      ),
      body: ListView.separated(
          separatorBuilder: ((context, index) => const SizedBox(
                height: 16,
              )),
          padding: EdgeInsets.all(24),
          itemCount: 3,
          itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.of(context).push(_buildPageRouteForSqlite());
                },
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      items[index].title.toUpperCase(),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )),
    );
  }

  MaterialPageRoute _buildPageRouteForSqlite() {
    return MaterialPageRoute(builder: (context) {
      return TodoScreen(taksRepository: SqliteBoxRepository(sqliteDatabase));
    });
  }
}
