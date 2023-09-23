import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tarefas_do_dia/modules/task_module/model/task_model.dart';
import '../controller/task_controller.dart';

class TaskListView extends StatelessWidget {
  final TextEditingController titleController;
  final TextEditingController descriptionController;

  const TaskListView({
    super.key,
    required this.titleController,
    required this.descriptionController,
  });

  @override
  Widget build(BuildContext context) {
    final taskController = Modular.get<TaskController>();
    return Observer(
      builder: (context) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {
                         taskController.showImage();
                        },
                      ),
                      const Text(
                        'Adicionar Tarefa',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 36.0),
                    ],
                  ),
                  Visibility(
                    visible: taskController.showColum,
                    child: Column(
                      children: [
                        TextField(
                          controller: titleController,
                          decoration: const InputDecoration(labelText: 'Título'),
                        ),
                        TextField(
                          controller: descriptionController,
                          decoration: const InputDecoration(labelText: 'Descrição'),
                        ),
                        const SizedBox(height: 16.0),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                taskController.addTask(
                                  TaskModel(titleController.text, descriptionController.text),
                                );
                                titleController.clear();
                                descriptionController.clear();
                              },
                              child: const Text('Adicionar Tarefa'),
                            ),
                            const SizedBox(width: 8.0),
                            ElevatedButton(
                              onPressed: () {
                                titleController.clear();
                                descriptionController.clear();
                              },
                              child: const Text('Limpar Campos'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: taskController.tasks.length,
                    itemBuilder: (BuildContext context, int index) {
                      final task = taskController.tasks[index];

                      return Card(
                        margin: const EdgeInsets.all(8.0),
                        child: ListTile(
                          title: Text(task.title),
                          subtitle: Text(task.description),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.edit),
                                onPressed: () {
                                  titleController.text = task.title;
                                  descriptionController.text = task.description;
                                  taskController.removeTask(index);
                                },
                              ),
                              IconButton(
                                icon: const Icon(Icons.delete),
                                onPressed: () {
                                  taskController.removeTask(index);
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        );
      }
    );
  }
}
