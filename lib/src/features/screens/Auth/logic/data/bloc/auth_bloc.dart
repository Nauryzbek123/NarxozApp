import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:narxoz_project/src/features/screens/Auth/logic/data/repository/repository.dart';
import 'package:narxoz_project/token/prefs.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  final PreferencesService prefs;
  AuthBloc(this.authRepository, this.prefs) : super(AuthInitial()) {
    on<LogInUser>((event, emit) async {
      emit(LogInLoading());
      try {
        print(event.id);
        print(event.password);
        await authRepository.logInRequest(event.id, event.password);
        emit(LogInSuccess());
      } on DioError catch (e) {
        print(e.message);
        emit(LogInFailed(message: e.message));
      }
    });
  }
}
