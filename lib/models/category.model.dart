import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CategoryModel {
  CategoryModel({
    int id,
    String name,
    IconData icon,
  }) {
    this.id = id;
    this.name = name;
    this.icon = icon;
  }
  RxInt _id = RxInt();
  set id(int value) => _id.value = value;
  int get id => _id.value;

  RxString _name = RxString();
  set name(String value) => _name.value = value;
  String get name => _name.value;

  Rx<IconData> _icon = Rx<IconData>();
  set icon(IconData value) => _icon.value = value;
  IconData get icon => _icon.value;
}
