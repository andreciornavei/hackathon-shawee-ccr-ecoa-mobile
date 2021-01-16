import 'package:get/route_manager.dart';

import 'pages/login/index.dart';
import 'pages/panel/index.dart';

routes() => [
  GetPage(name: "/", page: () => LoginView()),
  GetPage(name: "/panel", page: () => PanelView()),
];