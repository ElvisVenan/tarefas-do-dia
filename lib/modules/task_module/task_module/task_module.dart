import 'package:flutter_modular/flutter_modular.dart';

import '../../../const/app_routes.dart';

import '../controller/task_controller.dart';
import '../view/task_page.dart';

class TaskModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => TaskController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(AppRoutes.appDefaultPage, child: (context, args) => TaskPage()),
    ChildRoute(AppRoutes.appTaskPage, child: (context, args) => TaskPage()),
  ];
}
