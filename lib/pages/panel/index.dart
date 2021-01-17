import 'package:ecoar_mobile/utils/colors.dart';
import 'package:ecoar_mobile/widgets/ecoar_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';
import 'widgets/nav_bar.dart';

class PanelView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PanelController>(
      init: PanelController(),
      builder: (controller) => Scaffold(
        backgroundColor: AppColors.BACKGROUND_COLOR,
        appBar: EcoarAppBar(
          leadings: <Widget>[
            Image.asset("assets/images/icon2.png", height: 32),
          ],
          actions: <Widget>[
            Text(
              "andre.ciornavei",
              style: TextStyle(
                color: AppColors.WHITE,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
        body: Obx(
          () => Container(
            color: AppColors.BACKGROUND_COLOR,
            child: controller.selectedPage,
          ),
        ),
        bottomNavigationBar: Obx(
          () => NavBar(
            controller.items,
            controller.selectedIndex.value,
            controller.setSelectedIndex,
          ),
        ),
      ),
    );
  }
}
