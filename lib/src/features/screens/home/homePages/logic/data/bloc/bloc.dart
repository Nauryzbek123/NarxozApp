import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../model/my_lessons_model.dart';
import '../../model/news_index_model.dart';
import '../../model/teachers_index_model.dart';
import '../repository/repository.dart';

@Injectable()
class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final HomePageRepository repository;

  HomePageBloc(this.repository) : super(HomeLoading()) {
    on<HomePageInfo>((event, emit) async {
      emit(HomeLoading());
      try {
        // Fetch all data types
        final newsIndex = await repository.getNewsIndex();
        final teachersIndex = await repository.getTeacherIndex();
        final userLesson = await repository.getUserLesson();

        // Emit HomePageSuccess when all data fetching operations are successful
        emit(HomePageSuccess(newsIndex,teachersIndex,userLesson));
        // emit(NewsIndexLoaded(newsIndex));
        // emit(TeacherIndexLoaded(teachersIndex));
        // emit(UserLessonLoaded(userLesson));
      } on DioError catch (e) {
        emit(RepositoryError(e.message));
        print(e.message);
      }
      // Dispatch separate events for each repository method call
      // add(GetNewsIndex());
      // add(GetTeacherIndex());
      // add(GetUserLesson());
    });

    on<GetNewsIndex>((event, emit) async {
      try {
        final newsIndex = await repository.getNewsIndex();
        print('from bloc news: $newsIndex');
        emit(NewsIndexLoaded(newsIndex));
      } on DioError catch (e) {
        emit(RepositoryError(e.message));
        print(e.message);
      }
    });

    on<GetTeacherIndex>((event, emit) async {
      try {
        final teachersIndex = await repository.getTeacherIndex();
        emit(TeacherIndexLoaded(teachersIndex));
      } on DioError catch (e) {
        emit(RepositoryError(e.message));
        print(e.message);
      }
    });

    on<GetUserLesson>((event, emit) async {
      try {
        final userLesson = await repository.getUserLesson();
        emit(UserLessonLoaded(userLesson));
      } on DioError catch (e) {
        emit(RepositoryError(e.message));
        print(e.message);
      }
    });
  }
}

abstract class HomePageState {}

abstract class HomePageEvent {}

class HomePageInfo extends HomePageEvent {}

class GetNewsIndex extends HomePageEvent {}

class GetTeacherIndex extends HomePageEvent {}

class GetUserLesson extends HomePageEvent {}

class HomeLoading extends HomePageState {}

class NewsIndexLoaded extends HomePageState {
  final List<NewsIndexModel> newsIndex;
  NewsIndexLoaded(this.newsIndex);
}

class TeacherIndexLoaded extends HomePageState {
  final TeachersIndexModel teachersIndex;
  TeacherIndexLoaded(this.teachersIndex);
}

class UserLessonLoaded extends HomePageState {
  final MyLessonsModel userLesson;
  UserLessonLoaded(this.userLesson);
}

class RepositoryError extends HomePageState {
  final String message;
  RepositoryError(this.message);
}

class HomePageSuccess extends HomePageState {
  final List<NewsIndexModel> newsIndex;
  final TeachersIndexModel teacherIndex;
  final MyLessonsModel myLesson;

  HomePageSuccess(this.newsIndex, this.teacherIndex, this.myLesson);
}
