import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:narxoz_project/src/features/screens/Auth/logic/data/model/authModel.dart';
import 'package:narxoz_project/src/features/screens/Auth/logic/data/repository/repository.dart';
import 'package:narxoz_project/token/prefs.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  final PreferencesService prefs;
   AuthModel? userInfo;
   void addUserInfo(AuthModel userInfo) {
    this.userInfo = userInfo;
  }
  AuthBloc(this.authRepository, this.prefs) : super(AuthInitial()) {
    on<LogInUser>((event, emit) async {
      emit(LogInLoading());
      try {
        final response =
            await authRepository.logInRequest(event.id, event.password);
        print("id: ${event.id}");
        print("password: ${event.password}");

        // Check if the response is a List and not empty
        if (response.isNotEmpty && response[0].success) {
          final data = response[0].data;
          print(response[0].message);
          emit(LogInSuccess(authData: response));
        } else {
          final errorMessage =
              response.isNotEmpty ? response[0].message : "Unknown error";
          print('error: $errorMessage');
          emit(LogInFailed(message: errorMessage));
        }
      } on DioError catch (e) {
        if (e.response?.statusCode == 404) {
          emit(LogInFailed(
              message:
                  "Неверное имя пользователя или пароль. Пожалуйста, попробуйте снова"));
        } else {
          print("Dio error: ${e.message}");
          emit(LogInFailed(message: e.message));
        }
      }
    });
  }
}
