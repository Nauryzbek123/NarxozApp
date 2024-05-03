import 'dart:convert';

import '../datasource/datasource.dart';
import '../model/authModel.dart';

abstract class AuthRepository {
  Future<List<AuthModel>> logInRequest(
    String id,
    String password,
  );
}

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource authDataSource;

  AuthRepositoryImpl(this.authDataSource);

  @override
  Future<List<AuthModel>> logInRequest(
    String id,
    String password,
  ) async {
    
   

   final response = await authDataSource.logInRequest(id, password);


    if (response.data is Map<String, dynamic>) {
      final Map<String, dynamic> data = response.data;
      final AuthModel auth = AuthModel.fromJson(data);
      return [auth];
    } else {
      // Handle the case when response.data is not a map
      print('Invalid data format');
      return [];
    }
    
  }
}
