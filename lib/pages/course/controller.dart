import 'package:ecoar_mobile/models/course.model.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class CourseController extends GetxController {
  CourseModel course = CourseModel(
    id: 1,
    thumbnail:
        "https://img-b.udemycdn.com/course/240x135/2559944_8a71.jpg?secure=OGtn9qqVD0tlQP_iRv8gfg%3D%3D%2C1610915349",
    title: "Saiba tudo sobre Startups e Empreendedorismo",
    description:
        "Um curso direto e objetivo feito pelo fundador de uma premiada startup brasileira. Empreenda certo e rápido.",
    producer: "André Ciornavei",
    teaLevel: 3,
  );
}
