import 'package:ecoar_mobile/models/class.model.dart';
import 'package:ecoar_mobile/models/course.model.dart';
import 'package:ecoar_mobile/models/section.model.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class CourseController extends GetxController {
  CourseModel course;
  RxList<dynamic> items = new RxList<dynamic>([]);

  CourseController() {
    this.course = CourseModel(
      id: 1,
      thumbnail:
          "https://img-b.udemycdn.com/course/240x135/2559944_8a71.jpg?secure=OGtn9qqVD0tlQP_iRv8gfg%3D%3D%2C1610915349",
      title: "Saiba tudo sobre Startups e Empreendedorismo",
      description:
          "Um curso direto e objetivo feito pelo fundador de uma premiada startup brasileira. Empreenda certo e rápido.",
      producer: "André Ciornavei",
      teaLevel: 3,
      sections: [
        SectionModel(id: 1, title: "Modulo 01 - Introdução", classes: [
          ClassModel(id: 1, title: "O que é startup?"),
          ClassModel(id: 2, title: "Disrupção?"),
          ClassModel(id: 3, title: "História das startups?"),
        ]),
        SectionModel(id: 2, title: "Modulo 02 - Dor e Ideia", classes: [
          ClassModel(id: 1, title: "O que é startup?"),
          ClassModel(id: 2, title: "Disrupção?"),
          ClassModel(id: 3, title: "História das startups?"),
        ]),
        SectionModel(id: 3, title: "Modulo 03 - Planejamento", classes: [
          ClassModel(id: 1, title: "O que é startup?"),
          ClassModel(id: 2, title: "Disrupção?"),
          ClassModel(id: 3, title: "História das startups?"),
        ]),
        SectionModel(id: 3, title: "Modulo 04 - Estratégia", classes: [
          ClassModel(id: 1, title: "O que é startup?"),
          ClassModel(id: 2, title: "Disrupção?"),
          ClassModel(id: 3, title: "História das startups?"),
        ]),
        SectionModel(id: 3, title: "Modulo 05 - Sócios", classes: [
          ClassModel(id: 1, title: "O que é startup?"),
          ClassModel(id: 2, title: "Disrupção?"),
          ClassModel(id: 3, title: "História das startups?"),
        ]),
        SectionModel(id: 3, title: "Modulo 06 - MVP", classes: [
          ClassModel(id: 1, title: "O que é startup?"),
          ClassModel(id: 2, title: "Disrupção?"),
          ClassModel(id: 3, title: "História das startups?"),
        ]),
      ],
    );

    this.course.sections.forEach((SectionModel element) {
      items.add({"type": "section", "data": element});
      int position = 1;
      element?.classes?.forEach((ClassModel classe) {
        classe.position = position;
        items.add({"type": "class", "data": classe});
        position++;
      });
    });
  }
}
