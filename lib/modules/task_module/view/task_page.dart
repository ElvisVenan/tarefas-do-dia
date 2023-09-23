import 'package:flutter/material.dart';
import 'package:tarefas_do_dia/modules/task_module/model/task_model.dart';
import 'package:tarefas_do_dia/modules/task_module/view/task_list_view_page.dart';

class TaskPage extends StatefulWidget {

  TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  final TextEditingController titleController = TextEditingController();

  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lista de Tarefas'),
        ),
        body: SingleChildScrollView(
          child: TaskListView(
            titleController: titleController,
            descriptionController: descriptionController,
          ),
        ),
      ),
    );
  }
}