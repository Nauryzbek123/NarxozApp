import 'package:dio/dio.dart';
import 'package:narxoz_project/token/prefs.dart';

import '../../../../../../../../token/network_service.dart';
import '../../../../../../../core/resources/hosting_add.dart';

abstract class MainPageDataSource {
  Future<Response> getNewsIndexRequest();
  Future<Response> getTeachersIndexRequest();
  Future<Response> getUserLessonsRequest();
}

class MainPageDataSourceImpl implements MainPageDataSource {
   final NetworkService service;

  MainPageDataSourceImpl(this.service);
  Dio dio = Dio();
  @override
  Future<Response> getNewsIndexRequest() async {
   
    Response response =
        await dio.get('$narxos_host/api/news', options: Options(
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${service.option}',
      },
    ));
        print('News Index Response: $response');

    return response;
  }

  @override
  Future<Response> getTeachersIndexRequest() async {
    
    Response response = await dio.get(
      '$narxos_host/api/teachers',
      options: Options(
        headers: {
          'Accept': 'application/json',
          'Authorization': 'Bearer ${service.option}',
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
          'Authorization': 'Bearer ${service.option}',
        },
      ),
    );
    print('User Lessons Response: $response');
    return response;
  }
}
