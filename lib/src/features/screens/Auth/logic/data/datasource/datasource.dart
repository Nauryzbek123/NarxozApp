import 'dart:collection';

import 'package:dio/dio.dart';

import '../../../../../../core/resources/hosting_add.dart';

abstract class AuthDataSource {
  Future<Response> logInRequest(
    String id,
    String password,
  );
}

class AuthDataSourceImpl implements AuthDataSource {
  static const int maxRequestPerSecond = 5;
  static Queue<DateTime> requestQueue = Queue<DateTime>();

  Dio dio = Dio();

  @override
  Future<Response> logInRequest(String id, String password) async {
    // return await dio.post('${narxos_host}/api/login', data: {
    //   'identifier': id, 
    //   'password': password,
    // });
    Response response = await dio.post('${narxos_host}/api/login', data: {
        'identifier': id, 
        'password': password,
      });
    
    return response;
  }
}
