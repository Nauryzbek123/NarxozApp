// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_lessons_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyLessonsModel _$MyLessonsModelFromJson(Map<String, dynamic> json) =>
    MyLessonsModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MyLessonsModelToJson(MyLessonsModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      group: json['group'] as String?,
      lessons: (json['lessons'] as List<dynamic>?)
          ?.map((e) => Lessons.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'group': instance.group,
      'lessons': instance.lessons,
    };

Lessons _$LessonsFromJson(Map<String, dynamic> json) => Lessons(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      start_time: json['start_time'] as String?,
      end_time: json['end_time'] as String?,
      capacity: json['capacity'] as String?,
      day_of_week: json['day_of_week'] as String?,
      status: json['status'] as String?,
      type: json['type'] as String?,
      is_available: json['is_available'] as String?,
      color_type: json['color_type'] as String?,
      teacher: json['teacher'] == null
          ? null
          : Teacher.fromJson(json['teacher'] as Map<String, dynamic>),
      students_count: json['students_count'] as int?,
      lesson_date: json['lesson_date'] as String?,
    );

Map<String, dynamic> _$LessonsToJson(Lessons instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'start_time': instance.start_time,
      'end_time': instance.end_time,
      'capacity': instance.capacity,
      'day_of_week': instance.day_of_week,
      'status': instance.status,
      'type': instance.type,
      'is_available': instance.is_available,
      'color_type': instance.color_type,
      'teacher': instance.teacher,
      'students_count': instance.students_count,
      'lesson_date': instance.lesson_date,
    };

Teacher _$TeacherFromJson(Map<String, dynamic> json) => Teacher(
      id: json['id'] as int?,
      name: json['name'] as String?,
      surname: json['surname'] as String?,
      middleName: json['middleName'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$TeacherToJson(Teacher instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'surname': instance.surname,
      'middleName': instance.middleName,
      'avatar': instance.avatar,
    };
