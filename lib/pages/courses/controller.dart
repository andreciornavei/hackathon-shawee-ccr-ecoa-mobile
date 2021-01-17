import 'package:ecoar_mobile/models/course.model.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class CoursesController extends GetxController {
  List<CourseModel> courses = [
    CourseModel(id: 1, thumbnail: "https://img-b.udemycdn.com/course/240x135/2559944_8a71.jpg?secure=OGtn9qqVD0tlQP_iRv8gfg%3D%3D%2C1610915349", title: "Saiba tudo sobre Startups e Empreendedorismo", description: "Um curso direto e objetivo feito pelo fundador de uma premiada startup brasileira. Empreenda certo e rápido.", producer: "André Ciornavei", teaLevel: 3),
    CourseModel(id: 3, thumbnail: "https://img-a.udemycdn.com/course/240x135/1969718_7416_4.jpg?YncLmCMVWIgPuAkLOZhSc3eWH0BXjcrlH7Gay0wLiauN-CkA71du-LDT3KgyLj6TBtE2FvXFn34Ho5vEOBycZLX-AGUjGsKdhSo3qoK4DW3GzDCkhTVA5InhA9LNtc_s", title: "Empreendedorismo - Criatividade Empreendedora", description: "Usando a criatividade para empreender.", producer: "André Ciornavei", teaLevel: 1),
    CourseModel(id: 4, thumbnail: "https://img-a.udemycdn.com/course/240x135/731434_00cd_4.jpg?Ru-WJhthN4jgRoXz8kCQPe_XTKJV5JUCBEcHiwSCvEvQ__PJZkVzlFiKhwWAM-cg7JUkp-ZBIUIry74D4rMdib58KH9aLT3SGkSWYo4ifYsuyVUaMpKLyse9ktXqJGU", title: "Fast MBA - Empreendedorismo, Negócios e Startups na Prática.", description: "Aprenda tudo sobre negócios para criar, alavancar e gerenciar empresas como um(a) verdadeiro(a) CEO.", producer: "André Ciornavei", teaLevel: 4),
  ];
}