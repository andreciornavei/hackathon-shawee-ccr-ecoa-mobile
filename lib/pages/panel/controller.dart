import 'package:ecoar_mobile/models/navitem.model.dart';
import 'package:ecoar_mobile/pages/account/index.dart';
import 'package:ecoar_mobile/pages/courses/index.dart';
import 'package:ecoar_mobile/pages/home/index.dart';
import 'package:ecoar_mobile/pages/mentoring/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';

class PanelController extends GetxController {
  List<Widget> pages = <Widget>[
    HomeView(),
    CoursesView(),
    MentoringView(),
    AccountView(),
  ];

  List<NavItemModel> items = [
    NavItemModel(Feather.home, "Home"),
    NavItemModel(Feather.tv, "Cursos"),
    NavItemModel(Feather.calendar, "Mentorias"),
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
