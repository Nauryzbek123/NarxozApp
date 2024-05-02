import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../../../token/network_service.dart';
import '../../../../../../../core/resources/hosting_add.dart';
import '../../model/my_lessons_model.dart';
import '../../model/news_index_model.dart';
import '../../model/teachers_index_model.dart';

@Injectable()
class HomePageRepository {
  final NetworkService service;

  HomePageRepository(this.service);
  Future<List<NewsIndexModel>> getNewsIndex() async {
    Response response =
        await service.dio.get('$narxos_host/api/news', options: service.option);

    if (response.data is Map<String, dynamic>) {
      final Map<String, dynamic> data = response.data;
      final NewsIndexModel news = NewsIndexModel.fromJson(data);

      return [news]; // Wrap the single news instance in a list
    } else {
      print('Invalid data format');
      return [];
    }
  }

  Future<TeachersIndexModel> getTeacherIndex() async {
    Response response = await service.dio
        .get('$narxos_host/api/teachers', options: service.option);

    if (response.data is Map<String, dynamic>) {
      final Map<String, dynamic> data = response.data;
      final TeachersIndexModel teachers = TeachersIndexModel.fromJson(data);

      return teachers; // Wrap the single news instance in a list
    } else {
      print('Invalid data format');
      throw Exception(
          'Invalid data format'); // Throw an exception or handle the error according to your requirement
    }
  }

  Future<MyLessonsModel> getUserLesson() async {
    print('object3');

    Response response = await service.dio
        .get('$narxos_host/api/my_lessons', options: service.option);

    print('lesson ${response}');
   if (response.data is Map<String, dynamic>) {
      final Map<String, dynamic> data = response.data;
      final MyLessonsModel lessons = MyLessonsModel.fromJson(data);

      return lessons; // Wrap the single news instance in a list
    } else {
      print('Invalid data format');
      throw Exception(
          'Invalid data format'); // Throw an exception or handle the error according to your requirement
    }
  }
}
