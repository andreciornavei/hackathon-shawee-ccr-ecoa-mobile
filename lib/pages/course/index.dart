import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecoar_mobile/utils/colors.dart';
import 'package:ecoar_mobile/widgets/button_icon.dart';
import 'package:ecoar_mobile/widgets/ecoar_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'controller.dart';

class CourseView extends StatelessWidget {
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
              child: Padding(
                padding: EdgeInsets.all(25),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        color: AppColors.ECOAR_YELLOW,
                        borderRadius: BorderRadius.circular(6),
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
                    SizedBox(height: 15),
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
            ),
          ],
        ),
      ),
    );
  }
}
