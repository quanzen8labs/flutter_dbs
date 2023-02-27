import 'package:database_compare/models/task.dart';
import 'package:database_compare/pages/create_task_screen.dart';
import 'package:database_compare/repositories/task_repository.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import 'task_list.dart';

class TodoScreen extends StatefulWidget {
  final TaksRepository taksRepository;
  const TodoScreen({super.key, required this.taksRepository});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => CreateTaskScreen()));
        },
      ),
      appBar: AppBar(
        title: const Text('Todo Example'),
      ),
      body: Column(
        children: [
          TableCalendar(
            calendarFormat: CalendarFormat.week,
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: DateTime.now(),
            availableCalendarFormats: const {CalendarFormat.week: "Week"},
          ),
          Expanded(
              child: TaskList(
            tasks: [
              Task(
                startTime: DateTime.parse('2023-03-26 08:20'),
                endTime: DateTime.parse('2023-03-26 10:20'),
                title: 'Task 1',
              )
            ],
          ))
        ],
      ),
    );
  }
}
