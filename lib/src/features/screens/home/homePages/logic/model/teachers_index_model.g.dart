// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teachers_index_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeachersIndexModel _$TeachersIndexModelFromJson(Map<String, dynamic> json) =>
    TeachersIndexModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TeachersIndexModelToJson(TeachersIndexModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as int,
      name: json['name'] as String,
      surname: json['surname'] as String,
      middleName: json['middle_name'] as String,
      shortInfo: json['short_info'],
      avatar: json['avatar'] as String,
      avgRating: json['avg_rating'],
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'surname': instance.surname,
      'middle_name': instance.middleName,
      'short_info': instance.shortInfo,
      'avatar': instance.avatar,
      'avg_rating': instance.avgRating,
    };
