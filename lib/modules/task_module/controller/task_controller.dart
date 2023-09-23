import 'package:mobx/mobx.dart';
import '../model/task_model.dart';

part 'task_controller.g.dart';

class TaskController = _TaskController with _$TaskController;

abstract class _TaskController with Store {
  @observable
  ObservableList<TaskModel> tasks = ObservableList<TaskModel>();

  @observable
  bool showColum = false;

  @action
  void addTask(TaskModel task) {
    tasks.add(task);
  }

  @action
  void removeTask(int index) {
    tasks.removeAt(index);
  }

  @action
  void editTask(int index, TaskModel task) {
    tasks[index] = task;
  }

  @action
  void showImage(){
    showColum = !showColum;
  }
}
