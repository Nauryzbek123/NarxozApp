part of 'auth_bloc.dart';

class AuthState {}

class AuthInitial extends AuthState {}

// Log in
class LogInLoading extends AuthState {}

class LogInSuccess extends AuthState {
  final List<AuthModel> authData;
  LogInSuccess({required this.authData});
}

class LogInFailed extends AuthState {
  final String message;
  LogInFailed({required this.message});

}
