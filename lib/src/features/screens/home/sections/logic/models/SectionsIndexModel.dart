import 'package:json_annotation/json_annotation.dart';

part 'SectionsIndexModel.g.dart';

@JsonSerializable()
class SectionsIndexModel {
  List<Data>? data;

  SectionsIndexModel({this.data});

  factory SectionsIndexModel.fromJson(Map<String, dynamic> json) =>
      _$SectionsIndexModelFromJson(json);

  Map<String, dynamic> toJson() => _$SectionsIndexModelToJson(this);
}

@JsonSerializable()
class Data {
  int? id;
  String? title;
  String? icon;

  Data({this.id, this.title, this.icon});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
