import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:narxoz_project/src/features/screens/home/sections/logic/models/SectionsIndexModel.dart';

import '../../../../../../../token/network_service.dart';
import '../../../../../../core/resources/hosting_add.dart';
import '../models/LessonByDateModel.dart';
import '../models/SectionShowModel.dart';

@Injectable()
class SectionsRepository {
  final NetworkService service;

  SectionsRepository(this.service);

  Future<List<SectionsIndexModel>> getSectionsIndex() async {
    Response response = await service.dio
        .get('$narxos_host/api/sections', options: service.option);

    if (response.data is Map<String, dynamic>) {
      final Map<String, dynamic> data = response.data;
      final SectionsIndexModel sectionsIndex =
          SectionsIndexModel.fromJson(data);

      return [sectionsIndex];
    } else {
      print('Invalid data format');
      return [];
    }
  }

  Future<List<SectionsShowModel>> getSectionsShow(int id) async {
    Response response = await service.dio
        .get('$narxos_host/api/sections/$id', options: service.option);

    print('show: $response');

    if (response.data is Map<String, dynamic>) {
      final Map<String, dynamic> data = response.data;
      final SectionsShowModel sectionsIndex = SectionsShowModel.fromJson(data);

      return [sectionsIndex];
    } else {
      print('Invalid data format');
      return [];
    }
  }

  Future<List<LessonByDateModel>> getLessonByDateShow(
      int id, String lessonDate) async {
    Response response = await service.dio.get('$narxos_host/api/lesson/$id',
        queryParameters: {'lesson_date': lessonDate}, options: service.option);
    print('lesson: $response');
    if (response.data is Map<String, dynamic>) {
      final Map<String, dynamic> data = response.data;
      final LessonByDateModel sectionsIndex = LessonByDateModel.fromJson(data);

      return [sectionsIndex];
    } else {
      print('Invalid data format');
      return [];
    }
  }
}
