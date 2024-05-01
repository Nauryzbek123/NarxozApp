import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:equatable/equatable.dart';
import 'package:narxoz_project/src/features/screens/home/homePages/logic/model/my_lessons_model.dart';
import 'package:narxoz_project/src/features/screens/home/homePages/logic/model/teachers_index_model.dart';

import '../data/repository/repository.dart';
import '../model/news_index_model.dart';


part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final MainPageRepository homeRepository;

  HomeBloc(this.homeRepository) : super(HomeInitialState()) {
    on<MenuDataEvent>(((event, emit) async {
      emit(MenuLoading());
      try {
        List<NewsIndexModel> newsIndex =
            await homeRepository.getNewsIndexRequest();
        List<TeachersIndexModel> teacherIndex =
            await homeRepository.getTeachersIndexRequest();
        List<MyLessonsModel> userLessons =
            await homeRepository.getUserLessonsRequest();
        emit(MenuSuccess(
            newsIndexData: newsIndex,
            teacherIndex: teacherIndex,
            userLessons: userLessons));
      } on DioError catch (e) {
        emit(MenuError(message: 'e.message: ${e.message}'));
      }
    }));
  }
}
