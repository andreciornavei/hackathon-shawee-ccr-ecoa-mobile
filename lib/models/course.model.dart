import 'package:get/get.dart';
import 'section.model.dart';

class CourseModel {
  CourseModel({
    int id,
    String title,
    String description,
    String producer,
    String thumbnail,
    int teaLevel,
    List<SectionModel> sections
  }) {
    this.id = id;
    this.title = title;
    this.description = description;
    this.producer = producer;
    this.teaLevel = teaLevel;
    this.thumbnail = thumbnail;
    this.sections = sections;
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

  RxString _thumbnail = RxString();
  set thumbnail(String value) => _thumbnail.value = value;
  String get thumbnail => _thumbnail.value;

  RxInt _teaLevel = RxInt();
  set teaLevel(int value) => _teaLevel.value = value;
  int get teaLevel => _teaLevel.value;

  RxList<SectionModel> _sections = RxList<SectionModel>();
  set sections(List<SectionModel> value) => _sections.value = value;
  List<SectionModel> get sections => _sections.value;
}