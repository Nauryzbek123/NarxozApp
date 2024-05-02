import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../model/news_index_model.dart';
import 'testRepo.dart';

@Injectable()
class MenuBloc extends Bloc<MenuEvent, MenuState> {
  final MenuyRepositoryy repository;

  MenuBloc(this.repository) : super(MenuLoading()) {
    on<GetMenuInfo>((event, emit) async {
      emit(MenuLoading());
      try {
        final profile = await repository.getProfile();
        emit(MenuSuccess(profile));
      } on DioError catch (e) {
        // emit(MenuFailure((e)));
        print(e.message);
      }
    });
  }
}

abstract class MenuState {}

abstract class MenuEvent {}

class GetMenuInfo extends MenuEvent {}

class MenuLoading extends MenuState {}

class MenuSuccess extends MenuState {
  final NewsIndexModel NewsIndex;

  MenuSuccess(this.NewsIndex);
}

class MenuFailure extends MenuState {
  final String? message;
  MenuFailure(this.message);
}