import 'package:get/get.dart';

class UserModel {
  UserModel({
    String username,
    String name,
  }) {
    this.username = username;
    this.name = name;
  }
  RxString _username = RxString();
  set username(String value) => _username.value = value;
  String get username => _username.value;

  RxString _name = RxString();
  set name(String value) => _name.value = value;
  String get name => _name.value;
}
