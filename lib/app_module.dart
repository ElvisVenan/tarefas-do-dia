import 'package:flutter_modular/flutter_modular.dart';

import 'const/app_routes.dart';

import 'modules/task_module/task_module/task_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
  ];

  @override
  List<ModularRoute> get routes => [
    ModuleRoute(AppRoutes.appDefaultPage, module: TaskModule()),
  ];

}