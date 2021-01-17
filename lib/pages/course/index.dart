import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecoar_mobile/pages/course/widgets/bottom_player.dart';
import 'package:ecoar_mobile/pages/course/widgets/section_card.dart';
import 'package:ecoar_mobile/utils/colors.dart';
import 'package:ecoar_mobile/widgets/button_icon.dart';
import 'package:ecoar_mobile/widgets/ecoar_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'controller.dart';
import 'widgets/class_card.dart';

class CourseView extends StatelessWidget {
  Widget _buildItem(dynamic item) {
    switch (item['type']) {
      case "section":
        return SectionCard(item['data']);
      case "class":
        return ClassCard(item['data']);
    }
    return Text("unknwon type");
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CourseController>(
      init: CourseController(),
      builder: (controller) => Scaffold(
        backgroundColor: AppColors.WHITE,
        appBar: EcoarAppBar(
          leadings: <Widget>[
            ButtonIcon(
              icon: Feather.arrow_left,
              color: AppColors.WHITE,
              action: () => Get.back(),
              fullRounded: true,
            )
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
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: AppColors.DARK,
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          blurRadius: 15,
                          color: AppColors.SHADOW,
                          offset: Offset(0, 10),
                        ),
                      ],
                      image: DecorationImage(
                        image: CachedNetworkImageProvider(
                          controller.course.thumbnail,
                        ),
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(25),
                    child: Column(
                      children: <Widget>[
                        Text(
                          controller.course.title,
                          style: TextStyle(
                            fontSize: 21,
                            color: AppColors.DARK,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          controller.course.description,
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.MUTE,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: <Widget>[
                            Text(
                              "Criado por: ",
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.MUTE,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              controller.course.producer,
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.MUTE,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Obx(
              () => SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return _buildItem(controller.items[index]);
                  },
                  childCount: controller?.items?.length ?? 0,
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomPlayer(controller.course),
      ),
    );
  }
}
