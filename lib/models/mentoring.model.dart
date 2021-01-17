import 'package:get/get.dart';

class MentoringModel {
  MentoringModel({
    int id,
    String name,
    String description,
    String date,    
    String avatar,
    int teaLevel
  }) {
    this.id = id;
    this.name = name;
    this.description = description;
    this.date = date;
    this.avatar = avatar;
    this.teaLevel = teaLevel;
  }

  RxInt _id = RxInt();
  set id(int value) => _id.value = value;
  int get id => _id.value;

  RxString _name = RxString();
  set name(String value) => _name.value = value;
  String get name => _name.value;

  RxString _description = RxString();
  set description(String value) => _description.value = value;
  String get description => _description.value;

  RxString _date = RxString();
  set date(String value) => _date.value = value;
  String get date => _date.value;

  RxString _avatar = RxString();
  set avatar(String value) => _avatar.value = value;
  String get avatar => _avatar.value;

  RxInt _teaLevel = RxInt();
  set teaLevel(int value) => _teaLevel.value = value;
  int get teaLevel => _teaLevel.value;
}