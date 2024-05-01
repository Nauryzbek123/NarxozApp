part of 'auth_bloc.dart';

class AuthEvent {}

class LogInUser extends AuthEvent {
  final String id;
  final String password;

  LogInUser({required this.id, required this.password});
}
