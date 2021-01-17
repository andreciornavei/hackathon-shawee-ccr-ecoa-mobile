import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import '../../controller.dart';

class LoginController extends GetxController {
  AppController appController = Get.find();

  RxBool _showPassword = new RxBool(false);
  set showPassword(bool value) => _showPassword.value = value;
  bool get showPassword => _showPassword.value;
}