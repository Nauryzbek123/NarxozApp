import 'package:json_annotation/json_annotation.dart';
part 'my_lessons_model.g.dart';

@JsonSerializable()
class MyLessonsModel {
  List<Data>? data;

  MyLessonsModel({this.data});

  factory MyLessonsModel.fromJson(Map<String, dynamic> json) =>
      _$MyLessonsModelFromJson(json);

  Map<String, dynamic> toJson() => _$MyLessonsModelToJson(this);
}

@JsonSerializable()
class Data {
  String? group;
  List<Lessons>? lessons;

  Data({this.group, this.lessons});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Lessons {
  int? id;
  String? title;
  String? description;
  String? start_time;
  String? end_time;
  String? capacity;
  String? day_of_week;
  String? status;
  String? type;
  String? is_available;
  String? color_type;
  Teacher? teacher;
  int? students_count;
  String? lesson_date;

  Lessons(
      {this.id,
      this.title,
      this.description,
      this.start_time,
      this.end_time,
      this.capacity,
      this.day_of_week,
      this.status,
      this.type,
      this.is_available,
      this.color_type,
      this.teacher,
      this.students_count,
      this.lesson_date});

  factory Lessons.fromJson(Map<String, dynamic> json) =>
      _$LessonsFromJson(json);

  Map<String, dynamic> toJson() => _$LessonsToJson(this);
}

@JsonSerializable()
class Teacher {
  int? id;
  String? name;
  String? surname;
  String? middleName;
  String? avatar;

  Teacher({this.id, this.name, this.surname, this.middleName, this.avatar});

  factory Teacher.fromJson(Map<String, dynamic> json) =>
      _$TeacherFromJson(json);

  Map<String, dynamic> toJson() => _$TeacherToJson(this);
}
