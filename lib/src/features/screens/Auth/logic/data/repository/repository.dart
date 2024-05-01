import '../datasource/datasource.dart';

abstract class AuthRepository {
  Future<void> logInRequest(
    String id,
    String password,
  );
}

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource authDataSource;

  AuthRepositoryImpl(this.authDataSource);

  @override
  Future<void> logInRequest(
    String id,
    String password,
  ) async {
    await authDataSource.logInRequest(id, password);
  }
}
