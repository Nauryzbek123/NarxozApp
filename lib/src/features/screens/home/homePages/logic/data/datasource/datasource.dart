import 'package:dio/dio.dart';
import 'package:dio_logging_interceptor/dio_logging_interceptor.dart';
import 'package:injectable/injectable.dart';
import 'package:narxoz_project/src/features/screens/Auth/UserInfo.dart';
import 'package:narxoz_project/token/prefs.dart';
import 'package:provider/provider.dart';

import '../../../../../../../../token/network_service.dart';
import '../../../../../../../core/resources/hosting_add.dart';
abstract class MainPageDataSource {
  Future<Response> getNewsIndexRequest();
  Future<Response> getTeachersIndexRequest();
  Future<Response> getUserLessonsRequest();
}

class MainPageDataSourceImpl implements MainPageDataSource {
     Dio dio = Dio()..interceptors.add(DioLoggingInterceptor(compact: false));
     final PreferencesService _prefs;

     MainPageDataSourceImpl(this._prefs);


   @override
  Future<Response> getNewsIndexRequest() async {
    print('Authorization token: ${_prefs.tokenKey}'); // Access token from PreferencesService
    try {
      Response response = await dio.get(
        '$narxos_host/api/news',
        options: Options(
          headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer ${_prefs.tokenKey}', // Use token in headers
          },
        ),
      );

      print('News Index Response: $response');

      if (response.statusCode == 200) {
        return response;
      } else {
        // Handle error cases here
        print('Error: ${response.statusCode}');
        throw Exception('Failed to load news index');
      }
    } catch (e) {
      print('Error: $e');
      throw Exception('Failed to load news index');
    }
  }

  @override
  Future<Response> getTeachersIndexRequest() async {
    Response response = await dio.get(
      '$narxos_host/api/teachers',
      options: Options(
        headers: {
          'Accept': 'application/json',
          'Authorization': 'Bearer ${_prefs.tokenKey}', // Use token in headers
        },
      ),
    );
    print('Teachers Index Response: $response');
    return response;
  }

  @override
  Future<Response> getUserLessonsRequest() async {
    Response response = await dio.get(
      '$narxos_host/api/my_lessons',
      options: Options(
        headers: {
          'Accept': 'application/json',
          'Authorization': 'Bearer ${_prefs.tokenKey}', // Use token in headers
        },
      ),
    );
    print('User Lessons Response: $response');
    return response;
  }
}
