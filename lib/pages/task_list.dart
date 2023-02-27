import 'package:database_compare/models/task.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TaskList extends StatelessWidget {
  final List<Task> tasks;
  const TaskList({super.key, required this.tasks});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(16),
      itemCount: tasks.length,
      itemBuilder: (context, index) => TaskRow(
        task: tasks[index],
      ),
    );
  }
}

class TaskRow extends StatelessWidget {
  final Task task;
  const TaskRow({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          _parseDateTime(
            context,
            task.startTime,
          ),
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Card(
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    task.title,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${_parseDateTime(context, task.startTime)} - ${_parseDateTime(context, task.endTime)}',
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  String _parseDateTime(BuildContext context, DateTime dateTime) {
    return TimeOfDay.fromDateTime(dateTime).format(context);
  }
}
