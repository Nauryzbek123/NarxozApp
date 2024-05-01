// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthModel _$AuthModelFromJson(Map<String, dynamic> json) => AuthModel(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: AuthModelData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthModelToJson(AuthModel instance) => <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

AuthModelData _$AuthModelDataFromJson(Map<String, dynamic> json) =>
    AuthModelData(
      token: json['token'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthModelDataToJson(AuthModelData instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as int,
      userIdentifier: json['user_identifier'] as String,
      email: json['email'] as String?,
      name: json['name'] as String,
      surname: json['surname'] as String,
      middleName: json['middle_name'] as String,
      avatar: json['avatar'] as String,
      userType: json['user_type'] as String,
      attendanceCount: json['attendance_count'] as int,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'user_identifier': instance.userIdentifier,
      'email': instance.email,
      'name': instance.name,
      'surname': instance.surname,
      'middle_name': instance.middleName,
      'avatar': instance.avatar,
      'user_type': instance.userType,
      'attendance_count': instance.attendanceCount,
    };
