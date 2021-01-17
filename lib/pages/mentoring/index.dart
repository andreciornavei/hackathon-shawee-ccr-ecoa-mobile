import 'package:ecoar_mobile/widgets/h1.dart';
import 'package:ecoar_mobile/widgets/p.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class MentoringView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MentoringController>(
      init: MentoringController(),
      builder: (controller) {
        return SingleChildScrollView(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              H1("Mentorias"),
              P("Agente sua mentoria com nossos colaboradores")
            ],
          ),
        );
      },
    );
  }
}
