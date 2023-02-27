import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CreateTaskScreen extends StatefulWidget {
  const CreateTaskScreen({super.key});

  @override
  State<CreateTaskScreen> createState() => _CreateTaskScreenState();
}

class _CreateTaskScreenState extends State<CreateTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Task'),
      ),
      body: ListView(
        padding: EdgeInsets.all(24),
        children: [
          _buildInputGroup(context, 'Title'),
          SizedBox(height: 24),
          _buildInputGroup(context, 'Description'),
          SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildInputGroup(BuildContext context, String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          decoration: InputDecoration(
              hintText: '',
              labelText: title,
              border: new OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.teal))),
        ),
      ],
    );
  }
}
