// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../token/network_service.dart' as _i4;
import '../../../token/prefs.dart' as _i3;
import '../../features/screens/home/homePages/logic/data/bloc/bloc.dart' as _i7;
import '../../features/screens/home/homePages/logic/data/datasource/test/testBloc.dart'
    as _i8;
import '../../features/screens/home/homePages/logic/data/datasource/test/testRepo.dart'
    as _i6;
import '../../features/screens/home/homePages/logic/data/repository/repository.dart'
    as _i5;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.PreferencesService>(() => _i3.PreferencesService());
    gh.singleton<_i4.NetworkService>(
        () => _i4.NetworkService(gh<_i3.PreferencesService>()));
    gh.factory<_i5.HomePageRepository>(
        () => _i5.HomePageRepository(gh<_i4.NetworkService>()));
    gh.factory<_i6.MenuyRepositoryy>(
        () => _i6.MenuyRepositoryy(gh<_i4.NetworkService>()));
    gh.factory<_i7.HomePageBloc>(
        () => _i7.HomePageBloc(gh<_i5.HomePageRepository>()));
    gh.factory<_i8.MenuBloc>(() => _i8.MenuBloc(gh<_i6.MenuyRepositoryy>()));
    return this;
  }
}
