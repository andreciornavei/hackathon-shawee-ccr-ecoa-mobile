import 'package:ecoar_mobile/pages/login/controller.dart';
import 'package:ecoar_mobile/utils/colors.dart';
import 'package:ecoar_mobile/widgets/button.dart';
import 'package:ecoar_mobile/widgets/h1.dart';
import 'package:ecoar_mobile/widgets/input.dart';
import 'package:ecoar_mobile/widgets/p.dart';
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
          backgroundColor: AppColors.PURPLE,
          body: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Positioned(
                  bottom: 0,
                  child: Opacity(
                    opacity: 0.05,
                    child: Container(
                      width: 600,
                      height: 600,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/icon.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
                SafeArea(
                  child: Container(
                    height: (MediaQuery.of(context).size.height - 30),
                    padding: EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox.shrink(),
                        Image.asset("assets/images/logo1.png", height: 128),
                        H1(
                          "EMPREENDEDORISMO PARA AUTISTAS",
                          color: AppColors.WHITE,
                          alignment: TextAlign.center,
                        ),
                        Column(
                          children: <Widget>[
                            Input(
                              label: "Seu melhor e-mail",
                              suffixIcon: Feather.mail,
                            ),
                            Obx(
                              () => Input(
                                label: "Senha super secreta",
                                obscureText: !controller.showPassword,
                                suffixIcon: controller.showPassword
                                    ? Feather.eye
                                    : Feather.eye_off,
                                suffixAction: () => {
                                  controller.showPassword =
                                      !controller.showPassword
                                },
                              ),
                            ),
                            SizedBox(height: 10),
                            Button(
                              action: () => Get.toNamed("/panel"),
                              label: "Acessar plataforma",
                              icon: Feather.log_in,
                              backgroundColor: AppColors.ECOAR_PURPLE,
                              foregroundColor: AppColors.WHITE,
                            ),
                            SizedBox(height: 5),
                            Button(
                              action: () => {},
                              label: "Esqueci minha senha",
                              fontWeight: FontWeight.w500,
                              foregroundColor: AppColors.WHITE,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
