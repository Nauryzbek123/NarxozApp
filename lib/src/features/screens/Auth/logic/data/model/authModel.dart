import 'package:json_annotation/json_annotation.dart';

part 'authModel.g.dart'; // Update this to reflect the new file name

@JsonSerializable()
class AuthModel {
  final bool success;
  final String message;
  final AuthModelData data;

  AuthModel({required this.success, required this.message, required this.data});

  factory AuthModel.fromJson(Map<String, dynamic> json) => _$AuthModelFromJson(json);

  Map<String, dynamic> toJson() => _$AuthModelToJson(this);
}

@JsonSerializable()
class AuthModelData {
  final String token;
  final User user;

  AuthModelData({required this.token, required this.user});

  factory AuthModelData.fromJson(Map<String, dynamic> json) => _$AuthModelDataFromJson(json);

  Map<String, dynamic> toJson() => _$AuthModelDataToJson(this);
}

@JsonSerializable()
class User {
  final int id;
  @JsonKey(name: 'user_identifier')
  final String userIdentifier;
  final String? email;
  final String name;
  final String surname;
  @JsonKey(name: 'middle_name')
  final String middleName;
  final String avatar;
  @JsonKey(name: 'user_type')
  final String userType;
  @JsonKey(name: 'attendance_count')
  final int attendanceCount;

  User({
    required this.id,
    required this.userIdentifier,
    required this.email,
    required this.name,
    required this.surname,
    required this.middleName,
    required this.avatar,
    required this.userType,
    required this.attendanceCount,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

