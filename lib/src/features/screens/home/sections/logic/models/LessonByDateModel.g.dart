// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LessonByDateModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LessonByDateModel _$LessonByDateModelFromJson(Map<String, dynamic> json) =>
    LessonByDateModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LessonByDateModelToJson(LessonByDateModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
      capacity: json['capacity'] as String?,
      colorType: json['colorType'] as String?,
      dayOfWeek: json['dayOfWeek'] as String?,
      status: json['status'] as String?,
      type: json['type'] as String?,
      teacher: json['teacher'] == null
          ? null
          : Teacher.fromJson(json['teacher'] as Map<String, dynamic>),
      place: json['place'] as String?,
      studentsCount: json['studentsCount'] as int?,
      students: json['students'] as List<dynamic>?,
      isAvailable: json['isAvailable'] as bool?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'capacity': instance.capacity,
      'colorType': instance.colorType,
      'dayOfWeek': instance.dayOfWeek,
      'status': instance.status,
      'type': instance.type,
      'teacher': instance.teacher,
      'place': instance.place,
      'studentsCount': instance.studentsCount,
      'students': instance.students,
      'isAvailable': instance.isAvailable,
    };

Teacher _$TeacherFromJson(Map<String, dynamic> json) => Teacher(
      id: json['id'] as int?,
      name: json['name'] as String?,
      surname: json['surname'] as String?,
      middleName: json['middleName'] as String?,
      avatar: json['avatar'] as String?,
      shortInfo: json['shortInfo'] as String?,
      avgRating: json['avgRating'] as int?,
    );

Map<String, dynamic> _$TeacherToJson(Teacher instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'surname': instance.surname,
      'middleName': instance.middleName,
      'avatar': instance.avatar,
      'shortInfo': instance.shortInfo,
      'avgRating': instance.avgRating,
    };
