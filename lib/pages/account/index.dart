import 'package:ecoar_mobile/utils/colors.dart';
import 'package:ecoar_mobile/widgets/avatar.dart';
import 'package:ecoar_mobile/widgets/card.dart';
import 'package:ecoar_mobile/widgets/card_option.dart';
import 'package:ecoar_mobile/widgets/divisor.dart';
import 'package:ecoar_mobile/widgets/h1.dart';
import 'package:ecoar_mobile/widgets/p.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';

import 'controller.dart';

class AccountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AccountController>(
      init: AccountController(),
      builder: (controller) {
        return SingleChildScrollView(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              H1(
                "Minha conta",
                color: AppColors.MUTE,
                size: 18,
                margin: EdgeInsets.only(bottom: 5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      H1(
                        "John Doe",
                        size: 21,
                      ),
                      P("johndoe@gmail.com"),
                    ],
                  ),
                  Avatar(
                    "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                  )
                ],
              ),
              EcoaCard(
                margin: EdgeInsets.only(top: 25),
                child: Column(
                  children: <Widget>[
                    CardOption(
                      onPressed: () {},
                      label: "Informações pessoais",
                      prefixIcon: Feather.user,
                    ),
                    Divisor(),
                    CardOption(
                      onPressed: () {},
                      label: "Alterar senha",
                      prefixIcon: Feather.lock,
                    ),
                    Divisor(),
                    CardOption(
                      onPressed: () {},
                      label: "Preferências do app",
                      prefixIcon: Feather.sliders,
                    ),
                  ],
                ),
              ),
              EcoaCard(
                margin: EdgeInsets.only(top: 25),
                child: Column(
                  children: <Widget>[
                    CardOption(
                      onPressed: () {},
                      label: "Políticas de privacidade",
                      prefixIcon: Feather.paperclip,
                    ),
                    Divisor(),
                    CardOption(
                      onPressed: () {},
                      label: "Termos de uso",
                      prefixIcon: Feather.feather,
                    ),
                    Divisor(),
                    CardOption(
                      onPressed: () {},
                      label: "Me ajuda",
                      prefixIcon: Feather.help_circle,
                    ),
                  ],
                ),
              ),
              EcoaCard(
                margin: EdgeInsets.only(top: 25),
                child: Column(
                  children: <Widget>[
                    CardOption(
                      onPressed: () => Get.until((route) => route.isFirst),
                      label: "Sair do aplicativo",
                      prefixIcon: Feather.log_out,
                      prefixColor: AppColors.ECOAR_RED,
                      sufixColor: AppColors.ECOAR_RED,
                      color: AppColors.ECOAR_RED,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
