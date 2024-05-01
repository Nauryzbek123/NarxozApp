import 'package:flutter/material.dart';

class UserInfo {
  final String? token;
  final User? user;

  UserInfo({this.token, this.user});
}

class User {
  final int? id;
  final String? userIdentifier;
  final String? email;
  final String? name;
  final String? surname;
  final String? middleName;
  final String? avatar;
  final String? userType;
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
}


class UserInfoProvider extends ChangeNotifier {
  UserInfo? _userInfo;

  UserInfo? get userInfo => _userInfo;

  void setUserInfo(UserInfo userInfo) {
    _userInfo = userInfo;
    notifyListeners();
  }
}