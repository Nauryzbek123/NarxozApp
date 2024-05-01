part of 'home_bloc.dart';

class HomeState {}

class HomeInitialState extends HomeState {}

// All States in one
class MenuLoading extends HomeState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class MenuSuccess extends HomeState {
  final List<NewsIndexModel> newsIndexData;
  List<TeachersIndexModel> teacherIndex;
  List<MyLessonsModel> userLessons;

  MenuSuccess({required this.newsIndexData,required this.teacherIndex,required this.userLessons});
}

class MenuError extends HomeState {
  final String? message;

  MenuError({required this.message});
}
