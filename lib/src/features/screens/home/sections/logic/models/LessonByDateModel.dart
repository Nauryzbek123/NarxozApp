import 'package:json_annotation/json_annotation.dart';

part 'LessonByDateModel.g.dart';

@JsonSerializable()
class LessonByDateModel {
  Data? data;

  LessonByDateModel({this.data});

  factory LessonByDateModel.fromJson(Map<String, dynamic> json) =>
      _$LessonByDateModelFromJson(json);

  Map<String, dynamic> toJson() => _$LessonByDateModelToJson(this);
}

@JsonSerializable()
class Data {
  int? id;
  String? title;
  String? description;
  String? startTime;
  String? endTime;
  String? capacity;
  String? colorType;
  String? dayOfWeek;
  String? status;
  String? type;
  Teacher? teacher;
  String? place;
  int? studentsCount;
  List? students;
  bool? isAvailable;

  Data(
      {this.id,
      this.title,
      this.description,
      this.startTime,
      this.endTime,
      this.capacity,
      this.colorType,
      this.dayOfWeek,
      this.status,
      this.type,
      this.teacher,
      this.place,
      this.studentsCount,
      this.students,
      this.isAvailable});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Teacher {
  int? id;
  String? name;
  String? surname;
  String? middleName;
  String? avatar;
  String? shortInfo;
  int? avgRating;

  Teacher(
      {this.id,
      this.name,
      this.surname,
      this.middleName,
      this.avatar,
      this.shortInfo,
      this.avgRating});

  factory Teacher.fromJson(Map<String, dynamic> json) =>
      _$TeacherFromJson(json);

  Map<String, dynamic> toJson() => _$TeacherToJson(this);
}
