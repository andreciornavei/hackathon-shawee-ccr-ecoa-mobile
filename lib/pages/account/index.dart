import 'package:ecoar_mobile/utils/colors.dart';
import 'package:ecoar_mobile/widgets/avatar.dart';
import 'package:ecoar_mobile/widgets/h1.dart';
import 'package:ecoar_mobile/widgets/p.dart';
import 'package:flutter/material.dart';
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
                margin: EdgeInsets.only(bottom: 25),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      H1(
                        "André Ciornavei",
                        size: 21,
                      ),
                      P("andre.ciornavei@gmail.com"),
                    ],
                  ),
                  Avatar(
                    "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
