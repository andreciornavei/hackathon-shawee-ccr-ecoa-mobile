import 'package:get/get.dart';

class HomeItemModel {
  HomeItemModel({
    String type,
    dynamic data,
  }) {
    this.type = type;
    this.data = data;
  }
  RxString _type = RxString();
  set type(String value) => _type.value = value;
  String get type => _type.value;

  Rx<dynamic> _data = Rx<dynamic>();
  set data(dynamic value) => _data.value = value;
  dynamic get data => _data.value;
}
