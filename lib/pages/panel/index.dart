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
        backgroundColor: AppColors.WHITE,
        appBar: EcoarAppBar(
          leadings: <Widget>[
            Image.asset("assets/images/icon2.png", height: 32),
          ],
          actions: <Widget>[
            Text(
              "john.doe",
              style: TextStyle(
                color: AppColors.WHITE,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
        body: Obx(
          () => Container(
            color: AppColors.WHITE,
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
