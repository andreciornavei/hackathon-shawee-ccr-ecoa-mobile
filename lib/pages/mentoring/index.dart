import 'package:ecoar_mobile/pages/mentoring/widgets/mentoring_card.dart';
import 'package:ecoar_mobile/utils/colors.dart';
import 'package:ecoar_mobile/widgets/h1.dart';
import 'package:ecoar_mobile/widgets/p.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';

import 'controller.dart';

class MentoringView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MentoringController>(
      init: MentoringController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.WHITE,
          body: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      H1("Mentorias"),
                      P("Agende sua mentoria com nossos colaboradores parceiros e caminhe na direção certa.")
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return MentoringCard(
                      controller.mentorings[index],
                      action: () => {},
                    );
                  },
                  childCount: controller.mentorings.length ?? 0,
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.only(bottom: 60),
              )
            ],
          ),
          floatingActionButton: FlatButton(
            onPressed: () => {},
            color: AppColors.PURPLE,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Feather.plus,
                  color: AppColors.WHITE,
                  size: 16,
                ),
                SizedBox(width: 5),
                Text(
                  "Agendar mentoria",
                  style: TextStyle(
                      color: AppColors.WHITE,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
