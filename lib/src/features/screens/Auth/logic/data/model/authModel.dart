import 'package:json_annotation/json_annotation.dart';

part 'authModel.g.dart'; // Update this to reflect the new file name

@JsonSerializable()
class AuthModel {
  final bool success;
  final String message;
  final Data? data;

  AuthModel({
    required this.success,
    required this.message,
    this.data,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);

  Map<String, dynamic> toJson() => _$AuthModelToJson(this);

  static List<AuthModel> listFromJson(Map<String, dynamic> json) {
    List<AuthModel> authModelList = [];
    // Iterate over each key-value pair in the json map
    json.forEach((key, value) {
      // Create an AuthModel object from each key-value pair and add it to the list
      authModelList.add(AuthModel.fromJson(value));
    });
    return authModelList;
  }
}

@JsonSerializable()
class Data {
  final String? token;
  final User? user;

  Data({
    this.token,
    this.user,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class User {
  final int? id;
  @JsonKey(name: 'user_identifier')
  final String? userIdentifier;
  final dynamic? email;
  final String? name;
  final String? surname;
  @JsonKey(name: 'middle_name')
  final String? middleName;
  final String? avatar;
  @JsonKey(name: 'user_type')
  final String? userType;
  @JsonKey(name: 'attendance_count')
  final String? attendanceCount;

  User({
    this.id,
    this.userIdentifier,
    this.email,
    this.name,
    this.surname,
    this.middleName,
    this.avatar,
    this.userType,
    this.attendanceCount,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

