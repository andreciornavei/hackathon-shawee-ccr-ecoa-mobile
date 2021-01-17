import 'package:ecoar_mobile/models/category.model.dart';
import 'package:ecoar_mobile/models/homeitem.model.dart';
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
        CategoryCard(CategoryModel(id: 1, name: "Categoria 1"), () => {}),
        CategoryCard(CategoryModel(id: 2, name: "Categoria 2"), () => {}),
        CategoryCard(CategoryModel(id: 3, name: "Categoria 3"), () => {}),
        CategoryCard(CategoryModel(id: 4, name: "Categoria 4"), () => {}),        
      ],
    ),
    HomeItemModel(
      type: 'h1',
      data: {"label": "Cursos"},
    ),
  ];
}
