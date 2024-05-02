import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'prefs.dart';

@Singleton()
class NetworkService {
  final PreferencesService prefs;

  NetworkService(this.prefs);

  Dio get dio => Dio(); 
  Options get option => Options(headers: {
     'Accept': 'application/json',
      'Authorization': 'Bearer ${prefs.tokenKey}',
  });
}
