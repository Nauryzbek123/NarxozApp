// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SectionShowModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SectionsShowModel _$SectionsShowModelFromJson(Map<String, dynamic> json) =>
    SectionsShowModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SectionsShowModelToJson(SectionsShowModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      lessons: (json['lessons'] as List<dynamic>?)
          ?.map((e) => Lessons.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'lessons': instance.lessons,
    };

Lessons _$LessonsFromJson(Map<String, dynamic> json) => Lessons(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
      startDate: json['startDate'] as String?,
      capacity: json['capacity'] as String?,
      dayOfWeek: json['dayOfWeek'] as String?,
      characteristics: json['characteristics'],
      poster: json['poster'] as String?,
      status: json['status'] as String?,
      type: json['type'] as String?,
      teacher: json['teacher'] as List<dynamic>?,
      place: json['place'] == null
          ? null
          : Place.fromJson(json['place'] as Map<String, dynamic>),
      students: (json['students'] as List<dynamic>?)
          ?.map((e) => Students.fromJson(e as Map<String, dynamic>))
          .toList(),
      isAvailable: json['isAvailable'] as bool?,
    );

Map<String, dynamic> _$LessonsToJson(Lessons instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'startDate': instance.startDate,
      'capacity': instance.capacity,
      'dayOfWeek': instance.dayOfWeek,
      'characteristics': instance.characteristics,
      'poster': instance.poster,
      'status': instance.status,
      'type': instance.type,
      'teacher': instance.teacher,
      'place': instance.place,
      'students': instance.students,
      'isAvailable': instance.isAvailable,
    };

Place _$PlaceFromJson(Map<String, dynamic> json) => Place(
      title: json['title'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$PlaceToJson(Place instance) => <String, dynamic>{
      'title': instance.title,
      'address': instance.address,
    };

Students _$StudentsFromJson(Map<String, dynamic> json) => Students(
      id: json['id'] as int?,
      userIdentifier: json['userIdentifier'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      surname: json['surname'] as String?,
      middleName: json['middleName'] as String?,
      fcm: json['fcm'],
      avatar: json['avatar'] as String?,
      status: json['status'] as String?,
      gpa: json['gpa'] as String?,
      degree: json['degree'],
      group: json['group'],
      courseYear: json['courseYear'],
      gender: json['gender'],
      attendanceCount: json['attendanceCount'] as String?,
    );

Map<String, dynamic> _$StudentsToJson(Students instance) => <String, dynamic>{
      'id': instance.id,
      'userIdentifier': instance.userIdentifier,
      'email': instance.email,
      'name': instance.name,
      'surname': instance.surname,
      'middleName': instance.middleName,
      'fcm': instance.fcm,
      'avatar': instance.avatar,
      'status': instance.status,
      'gpa': instance.gpa,
      'degree': instance.degree,
      'group': instance.group,
      'courseYear': instance.courseYear,
      'gender': instance.gender,
      'attendanceCount': instance.attendanceCount,
    };
