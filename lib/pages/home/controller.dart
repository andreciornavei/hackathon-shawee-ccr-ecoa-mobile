import 'package:ecoar_mobile/models/category.model.dart';
import 'package:ecoar_mobile/models/course.model.dart';
import 'package:ecoar_mobile/models/homeitem.model.dart';
import 'package:ecoar_mobile/pages/home/widgets/course_card.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import 'widgets/category_card.dart';

class HomeController extends GetxController {
  List<HomeItemModel> items = [
    HomeItemModel(
      type: 'h1',
      data: {"label": "Categorias"},
    ),
    HomeItemModel(
      type: 'categories',
      data: [
        CategoryCard(CategoryModel(id: 1, name: "Empreendedorismo", icon: Feather.activity), () => {}),
        CategoryCard(CategoryModel(id: 2, name: "Administração", icon: Feather.airplay), () => {}),
        CategoryCard(CategoryModel(id: 3, name: "Vendas", icon: Feather.anchor), () => {}),
        CategoryCard(CategoryModel(id: 4, name: "Operações", icon: Feather.umbrella), () => {}),
        CategoryCard(CategoryModel(id: 5, name: "Mídia", icon: Feather.battery), () => {}),
        CategoryCard(CategoryModel(id: 6, name: "Industria", icon: Feather.globe), () => {}),
      ],
    ),
    HomeItemModel(
      type: 'h1',
      data: {"label": "Cursos"},
    ),
    HomeItemModel(
      type: 'courses',
      data: [
        CourseModel(id: 1, thumbnail: "https://img-b.udemycdn.com/course/240x135/2559944_8a71.jpg?secure=OGtn9qqVD0tlQP_iRv8gfg%3D%3D%2C1610915349", title: "Saiba tudo sobre Startups e Empreendedorismo", description: "Um curso direto e objetivo feito pelo fundador de uma premiada startup brasileira. Empreenda certo e rápido.", producer: "André Ciornavei", teaLevel: 3),
        CourseModel(id: 2, thumbnail: "https://img-a.udemycdn.com/course/240x135/2683592_512d_2.jpg?H3g-JJGj-jMtiOjvpDFuTIfceZcJoREpb0UYT_01mayAY0R-MOCDkgGVTdU0y7lTvwinkbEGf_1lQtvDEouiuHVTFncg9mUnyy0CKOVGD75Nf-dFDJ2vTaIKWU9yQXVY", title: "Empreendedorismo e Administração de Pequenos Negócios", description: "O passo-a-passo para quem quer abrir um negócio e administra-lo com Maestria.", producer: "André Ciornavei", teaLevel: 2),
        CourseModel(id: 3, thumbnail: "https://img-a.udemycdn.com/course/240x135/1969718_7416_4.jpg?YncLmCMVWIgPuAkLOZhSc3eWH0BXjcrlH7Gay0wLiauN-CkA71du-LDT3KgyLj6TBtE2FvXFn34Ho5vEOBycZLX-AGUjGsKdhSo3qoK4DW3GzDCkhTVA5InhA9LNtc_s", title: "Empreendedorismo - Criatividade Empreendedora", description: "Usando a criatividade para empreender.", producer: "André Ciornavei", teaLevel: 1),
        CourseModel(id: 4, thumbnail: "https://img-a.udemycdn.com/course/240x135/731434_00cd_4.jpg?Ru-WJhthN4jgRoXz8kCQPe_XTKJV5JUCBEcHiwSCvEvQ__PJZkVzlFiKhwWAM-cg7JUkp-ZBIUIry74D4rMdib58KH9aLT3SGkSWYo4ifYsuyVUaMpKLyse9ktXqJGU", title: "Fast MBA - Empreendedorismo, Negócios e Startups na Prática.", description: "Aprenda tudo sobre negócios para criar, alavancar e gerenciar empresas como um(a) verdadeiro(a) CEO.", producer: "André Ciornavei", teaLevel: 4),
      ],
    ),
  ];
}
