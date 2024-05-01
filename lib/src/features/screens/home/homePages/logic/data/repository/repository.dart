import 'dart:convert';

import 'package:narxoz_project/src/features/screens/home/homePages/logic/data/datasource/datasource.dart';
import 'package:narxoz_project/src/features/screens/home/homePages/logic/model/my_lessons_model.dart';
import 'package:narxoz_project/src/features/screens/home/homePages/logic/model/news_index_model.dart';
import 'package:narxoz_project/src/features/screens/home/homePages/logic/model/teachers_index_model.dart';

abstract class MainPageRepository {
  Future<List<NewsIndexModel>> getNewsIndexRequest();
  Future<List<TeachersIndexModel>> getTeachersIndexRequest();
  Future<List<MyLessonsModel>> getUserLessonsRequest();
}

class MainPageRepositoryImpl implements MainPageRepository {
  final MainPageDataSource mainPageDataSource;

  MainPageRepositoryImpl(this.mainPageDataSource);

  @override
  Future<List<NewsIndexModel>> getNewsIndexRequest() async {
    final response = await mainPageDataSource.getNewsIndexRequest();
    print('News Index Response Data: ${response.data}');
    final NewsIndexModel data = NewsIndexModel.fromJson(response.data);
    return [data];

  }

  @override
  Future<List<TeachersIndexModel>> getTeachersIndexRequest() async {
    final response = await mainPageDataSource.getTeachersIndexRequest();
    print('Teachers Index Response Data: ${response.data}');
    final TeachersIndexModel data = TeachersIndexModel.fromJson(response.data);
    return [data];
  }

  @override
  Future<List<MyLessonsModel>> getUserLessonsRequest() async {
    final response = await mainPageDataSource.getUserLessonsRequest();
    print('User Lessons Response Data: ${response.data}');
    final MyLessonsModel data = MyLessonsModel.fromJson(response.data);
    return [data];
  }
}
