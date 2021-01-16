import 'package:ecoar_mobile/pages/login/controller.dart';
import 'package:ecoar_mobile/utils/colors.dart';
import 'package:ecoar_mobile/widgets/ecoar_appbar.dart';
import 'package:ecoar_mobile/widgets/ecoar_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.BACKGROUND_COLOR,
          appBar: EcoarAppBar("ecoar.app"),
          body: Container(
            padding: EdgeInsets.all(25),
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Ecoar Sample Project"),
                SizedBox(height: 15),
                EcoarButton(
                  action: () => Get.toNamed("/panel"),
                  label: "Login",
                  icon: Feather.arrow_right,
                  backgroundColor: AppColors.PURPLE,
                  backgroundIcon: AppColors.ECOAR_BLUE,
                  foregroundColor: AppColors.WHITE,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
