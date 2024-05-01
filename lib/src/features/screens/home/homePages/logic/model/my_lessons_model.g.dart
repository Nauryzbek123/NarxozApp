// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_lessons_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyLessonsModel _$MyLessonsModelFromJson(Map<String, dynamic> json) =>
    MyLessonsModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MyLessonsModelToJson(MyLessonsModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      group: json['group'] as String,
      lessons: (json['lessons'] as List<dynamic>)
          .map((e) => Lesson.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'group': instance.group,
      'lessons': instance.lessons,
    };

Lesson _$LessonFromJson(Map<String, dynamic> json) => Lesson(
      id: json['id'] as int,
      sectionId: json['section_id'] as String,
      teacherId: json['teacher_id'] as String,
      title: json['title'] as String,
      characteristics: json['characteristics'],
      description: json['description'] as String,
      poster: json['poster'],
      status: json['status'] as String,
      type: json['type'] as String,
      startTime: json['start_time'] as String,
      endTime: json['end_time'] as String,
      startDate: json['start_date'],
      capacity: json['capacity'] as String,
      dayOfWeek: json['day_of_week'] as String,
      placeId: json['place_id'] as String,
      createdAt: json['created_at'],
      updatedAt: DateTime.parse(json['updated_at'] as String),
      studentCount: json['studentCount'] as int,
      lessonDate: DateTime.parse(json['lesson_date'] as String),
    );

Map<String, dynamic> _$LessonToJson(Lesson instance) => <String, dynamic>{
      'id': instance.id,
      'section_id': instance.sectionId,
      'teacher_id': instance.teacherId,
      'title': instance.title,
      'characteristics': instance.characteristics,
      'description': instance.description,
      'poster': instance.poster,
      'status': instance.status,
      'type': instance.type,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'start_date': instance.startDate,
      'capacity': instance.capacity,
      'day_of_week': instance.dayOfWeek,
      'place_id': instance.placeId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt.toIso8601String(),
      'studentCount': instance.studentCount,
      'lesson_date': instance.lessonDate.toIso8601String(),
    };
