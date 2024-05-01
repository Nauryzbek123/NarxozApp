import 'package:json_annotation/json_annotation.dart';

part 'teachers_index_model.g.dart';

@JsonSerializable()
class TeachersIndexModel {
  @JsonKey(name: "data")
  List<Data> data;

  TeachersIndexModel({
    required this.data,
  });

  factory TeachersIndexModel.fromJson(Map<String, dynamic> json) =>
      _$TeachersIndexModelFromJson(json);

  Map<String, dynamic> toJson() => _$TeachersIndexModelToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "surname")
  String surname;
  @JsonKey(name: "middle_name")
  String middleName;
  @JsonKey(name: "short_info")
  dynamic shortInfo;
  @JsonKey(name: "avatar")
  String avatar;
  @JsonKey(name: "avg_rating")
  dynamic avgRating;

  Data({
    required this.id,
    required this.name,
    required this.surname,
    required this.middleName,
    required this.shortInfo,
    required this.avatar,
    required this.avgRating,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
