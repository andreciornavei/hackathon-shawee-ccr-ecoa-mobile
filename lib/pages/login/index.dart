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
          backgroundColor: AppColors.BACKGROUND_COLOR,
          body: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: -100,
                  child: Opacity(
                    opacity: 0.02,
                    child: Container(
                      width: 400,
                      height: 400,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/watermark.png"),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image.asset("assets/images/logo1.png", height: 124),
                        Column(
                          children: <Widget>[
                            H1("Empreendedorismo para autistas"),
                            SizedBox(height: 10),
                            P("Ajudamos pessoas com TEA a se integrar no mercado do empreendedorismo por meio do ensino."),
                          ],
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
                                  controller.showPassword = !controller.showPassword
                                },
                              ),
                            ),
                            SizedBox(height: 10),
                            Button(
                              action: () => Get.toNamed("/panel"),
                              label: "Acessar plataforma",
                              icon: Feather.log_in,
                              backgroundColor: AppColors.PURPLE,
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
