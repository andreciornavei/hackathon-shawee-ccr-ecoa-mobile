import 'package:ecoar_mobile/models/navitem.model.dart';
import 'package:ecoar_mobile/pages/home/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';

class PanelController extends GetxController {
  List<Widget> pages = <Widget>[
    HomeView(),
    Text("Tela 2"),
    Text("Tela 3"),
    Text("Tela 4"),
    Text("Tela 5"),
  ];

  List<NavItemModel> items = [
    NavItemModel(Feather.home, "Home"),
    NavItemModel(Feather.search, "Pesquisar"),
    NavItemModel(Feather.play, "Cursos"),
    NavItemModel(Feather.heart, "Desejos"),
    NavItemModel(Feather.settings, "Conta"),
  ];

  RxInt selectedIndex = 0.obs;

  setSelectedIndex(int value) {
    selectedIndex.value = value;
  }

  Widget get selectedPage {
    return pages[selectedIndex.value];
  }
    
}
