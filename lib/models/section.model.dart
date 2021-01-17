import 'package:get/get.dart';

import 'class.model.dart';

class SectionModel {
  SectionModel({
    int id,
    String title,
    String description,
    int order,
    List<ClassModel> classes
  }) {
    this.id = id;
    this.title = title;
    this.description = description;
    this.order = order;
    this.classes = classes;
  }
  RxInt _id = RxInt();
  set id(int value) => _id.value = value;
  int get id => _id.value;

  RxString _title = RxString();
  set title(String value) => _title.value = value;
  String get title => _title.value;

  RxString _description = RxString();
  set description(String value) => _description.value = value;
  String get description => _description.value;

  RxInt _order = RxInt();
  set order(int value) => _order.value = value;
  int get order => _order.value;

  RxList<ClassModel> _classes = RxList<ClassModel>();
  set classes(List<ClassModel> value) => _classes.value = value;
  List<ClassModel> get classes => _classes.value;
}