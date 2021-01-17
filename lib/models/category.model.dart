import 'package:get/get.dart';

class CategoryModel {
  CategoryModel({
    int id,
    String name,
  }) {
    this.id = id;
    this.name = name;
  }
  RxInt _id = RxInt();
  set id(int value) => _id.value = value;
  int get id => _id.value;

  RxString _name = RxString();
  set name(String value) => _name.value = value;
  String get name => _name.value;
}
