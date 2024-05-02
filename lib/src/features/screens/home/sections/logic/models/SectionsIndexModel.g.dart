// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SectionsIndexModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SectionsIndexModel _$SectionsIndexModelFromJson(Map<String, dynamic> json) =>
    SectionsIndexModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SectionsIndexModelToJson(SectionsIndexModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as int?,
      title: json['title'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'icon': instance.icon,
    };
