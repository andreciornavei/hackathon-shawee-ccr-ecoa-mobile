import 'package:get/route_manager.dart';

import 'pages/login/index.dart';
import 'pages/panel/index.dart';
import 'pages/course/index.dart';

routes() => [
  GetPage(name: "/", page: () => LoginView()),
  GetPage(name: "/panel", page: () => PanelView()),
  GetPage(name: "/course/:id", page: () => CourseView()),
];