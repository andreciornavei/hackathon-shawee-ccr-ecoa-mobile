import 'package:get/get.dart';

class ClassModel {
  ClassModel({
    int id,
    String title,
    String description,
    String mediaId,    
    int position,
    int minutes
  }) {
    this.id = id;
    this.title = title;
    this.description = description;
    this.mediaId = mediaId;
    this.position = position;
    this.minutes = minutes;
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

  RxString _producer = RxString();
  set producer(String value) => _producer.value = value;
  String get producer => _producer.value;

  RxString _mediaId = RxString();
  set mediaId(String value) => _mediaId.value = value;
  String get mediaId => _mediaId.value;

  RxInt _position = RxInt();
  set position(int value) => _position.value = value;
  int get position => _position.value;
  
  RxInt _minutes = RxInt();
  set minutes(int value) => _minutes.value = value;
  int get minutes => _minutes.value;
}