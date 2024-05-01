import 'package:json_annotation/json_annotation.dart';
part 'my_lessons_model.g.dart';

@JsonSerializable()
class MyLessonsModel {
  @JsonKey(name: "data")
  List<Data> data;

  MyLessonsModel({
    required this.data,
  });

  factory MyLessonsModel.fromJson(Map<String, dynamic> json) =>
      _$MyLessonsModelFromJson(json);

  Map<String, dynamic> toJson() => _$MyLessonsModelToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: "group")
  String group;
  @JsonKey(name: "lessons")
  List<Lesson> lessons;

  Data({
    required this.group,
    required this.lessons,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Lesson {
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "section_id")
  String sectionId;
  @JsonKey(name: "teacher_id")
  String teacherId;
  @JsonKey(name: "title")
  String title;
  @JsonKey(name: "characteristics")
  dynamic characteristics;
  @JsonKey(name: "description")
  String description;
  @JsonKey(name: "poster")
  dynamic poster;
  @JsonKey(name: "status")
  String status;
  @JsonKey(name: "type")
  String type;
  @JsonKey(name: "start_time")
  String startTime;
  @JsonKey(name: "end_time")
  String endTime;
  @JsonKey(name: "start_date")
  dynamic startDate;
  @JsonKey(name: "capacity")
  String capacity;
  @JsonKey(name: "day_of_week")
  String dayOfWeek;
  @JsonKey(name: "place_id")
  String placeId;
  @JsonKey(name: "created_at")
  dynamic createdAt;
  @JsonKey(name: "updated_at")
  DateTime updatedAt;
  @JsonKey(name: "studentCount")
  int studentCount;
  @JsonKey(name: "lesson_date")
  DateTime lessonDate;

  Lesson({
    required this.id,
    required this.sectionId,
    required this.teacherId,
    required this.title,
    required this.characteristics,
    required this.description,
    required this.poster,
    required this.status,
    required this.type,
    required this.startTime,
    required this.endTime,
    required this.startDate,
    required this.capacity,
    required this.dayOfWeek,
    required this.placeId,
    required this.createdAt,
    required this.updatedAt,
    required this.studentCount,
    required this.lessonDate,
  });

  factory Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);

  Map<String, dynamic> toJson() => _$LessonToJson(this);
}
