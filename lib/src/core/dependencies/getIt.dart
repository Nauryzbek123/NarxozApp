import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:narxoz_project/src/core/dependencies/getIt.config.dart';
import 'package:narxoz_project/src/features/screens/Auth/logic/data/bloc/auth_bloc.dart';
import 'package:narxoz_project/src/features/screens/Auth/logic/data/datasource/datasource.dart';
import 'package:narxoz_project/src/features/screens/Auth/logic/data/repository/repository.dart';
import 'package:narxoz_project/src/features/screens/home/homePages/logic/bloc/home_bloc.dart';
import 'package:narxoz_project/src/features/screens/home/homePages/logic/data/datasource/datasource.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../token/network_service.dart';
import '../../../token/prefs.dart';
import '../../features/screens/home/homePages/logic/data/repository/repository.dart';

final getIt = GetIt.instance;
@InjectableInit(
    initializerName: 'init', preferRelativeImports: true, asExtension: true)

Future<void> configureDependencies() async {
  final pref = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => pref);
  getIt.init();
}

void initGetIt() async {
  ///Authorization
  getIt.registerFactory<AuthBloc>(() => AuthBloc(getIt(), getIt()));
  getIt.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(getIt<AuthDataSource>()));

  getIt.registerLazySingleton<AuthDataSource>(() => AuthDataSourceImpl());

  getIt.registerLazySingleton<PreferencesService>(() => PreferencesService());

    getIt.registerFactory<HomeBloc>(() => HomeBloc(getIt()));

  getIt
      .registerLazySingleton<MainPageRepository>(() => MainPageRepositoryImpl(getIt()));
  
    getIt.registerLazySingleton<MainPageDataSource>(() => MainPageDataSourceImpl(getIt()));

  getIt.registerLazySingleton<NetworkService>(() => NetworkService(getIt()));

}
