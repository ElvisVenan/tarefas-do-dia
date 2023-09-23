import 'package:flutter_modular/flutter_modular.dart';

import 'const/app_routes.dart';

import 'modules/task_module/controller/task_controller.dart';
import '../modules/task_module/view/task_page.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => TaskController()),
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute(AppRoutes.appDefaultPage, child: (context, args) => TaskPage()),
    ChildRoute(AppRoutes.appTaskPage, child: (context, args) => TaskPage()),
  ];

}