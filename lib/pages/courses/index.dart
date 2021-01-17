import 'package:ecoar_mobile/pages/home/widgets/course_card.dart';
import 'package:ecoar_mobile/widgets/h1.dart';
import 'package:ecoar_mobile/widgets/p.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class CoursesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CoursesController>(
      init: CoursesController(),
      builder: (controller) {
        return CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    H1("Meus cursos"),
                    P("Gerencie os cursos que você participa.")
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return CourseCard(controller.courses[index], action: () => { Get.toNamed("/course/${controller.courses[index].id}") },);
                },
                childCount: controller.courses.length ?? 0,
              ),
            )
          ],
        );
      },
    );
  }
}
