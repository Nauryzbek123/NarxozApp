import 'package:json_annotation/json_annotation.dart';

part 'SectionShowModel.g.dart';

@JsonSerializable()
class SectionsShowModel {
  Data? data;

  SectionsShowModel({this.data});

  factory SectionsShowModel.fromJson(Map<String, dynamic> json) =>
      _$SectionsShowModelFromJson(json);

  Map<String, dynamic> toJson() => _$SectionsShowModelToJson(this);
}

@JsonSerializable()
class Data {
  int? id;
  String? title;
  String? description;
  String? image;
  List<Lessons>? lessons;

  Data({this.id, this.title, this.description, this.image, this.lessons});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Lessons {
  int? id;
  String? title;
  String? description;
  String? startTime;
  String? endTime;
  String? startDate;
  String? capacity;
  String? dayOfWeek;
  dynamic characteristics;
  String? poster;
  String? status;
  String? type;
  List? teacher;
  Place? place;
  List<Students>? students;
  bool? isAvailable;

  Lessons(
      {this.id,
      this.title,
      this.description,
      this.startTime,
      this.endTime,
      this.startDate,
      this.capacity,
      this.dayOfWeek,
      this.characteristics,
      this.poster,
      this.status,
      this.type,
      this.teacher,
      this.place,
      this.students,
      this.isAvailable});

  factory Lessons.fromJson(Map<String, dynamic> json) => _$LessonsFromJson(json);

  Map<String, dynamic> toJson() => _$LessonsToJson(this);
}

@JsonSerializable()
class Place {
  String? title;
  String? address;

  Place({this.title, this.address});

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceToJson(this);
}

@JsonSerializable()
class Students {
  int? id;
  String? userIdentifier;
  String? email;
  String? name;
  String? surname;
  String? middleName;
  dynamic fcm;
  String? avatar;
  String? status;
  String? gpa;
  dynamic degree;
  dynamic group;
  dynamic courseYear;
  dynamic gender;
  String? attendanceCount;

  Students(
      {this.id,
      this.userIdentifier,
      this.email,
      this.name,
      this.surname,
      this.middleName,
      this.fcm,
      this.avatar,
      this.status,
      this.gpa,
      this.degree,
      this.group,
      this.courseYear,
      this.gender,
      this.attendanceCount});

  factory Students.fromJson(Map<String, dynamic> json) => _$StudentsFromJson(json);

  Map<String, dynamic> toJson() => _$StudentsToJson(this);
}
