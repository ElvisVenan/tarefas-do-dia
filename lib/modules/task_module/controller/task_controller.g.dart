// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TaskController on _TaskController, Store {
  late final _$tasksAtom =
      Atom(name: '_TaskController.tasks', context: context);

  @override
  ObservableList<TaskModel> get tasks {
    _$tasksAtom.reportRead();
    return super.tasks;
  }

  @override
  set tasks(ObservableList<TaskModel> value) {
    _$tasksAtom.reportWrite(value, super.tasks, () {
      super.tasks = value;
    });
  }

  late final _$_TaskControllerActionController =
      ActionController(name: '_TaskController', context: context);

  @override
  void addTask(TaskModel task) {
    final _$actionInfo = _$_TaskControllerActionController.startAction(
        name: '_TaskController.addTask');
    try {
      return super.addTask(task);
    } finally {
      _$_TaskControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeTask(int index) {
    final _$actionInfo = _$_TaskControllerActionController.startAction(
        name: '_TaskController.removeTask');
    try {
      return super.removeTask(index);
    } finally {
      _$_TaskControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void editTask(int index, TaskModel task) {
    final _$actionInfo = _$_TaskControllerActionController.startAction(
        name: '_TaskController.editTask');
    try {
      return super.editTask(index, task);
    } finally {
      _$_TaskControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tasks: ${tasks}
    ''';
  }
}
