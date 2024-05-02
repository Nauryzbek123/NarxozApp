import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:narxoz_project/src/features/screens/home/sections/logic/models/SectionsIndexModel.dart';

import '../../../../../../../token/network_service.dart';
import '../../../../../../core/resources/hosting_add.dart';

@Injectable()
class SectionsRepository {
  final NetworkService service;

  SectionsRepository(this.service);

  Future <List<SectionsIndexModel>> getSectionsIndex() async{
    Response response =
        await service.dio.get('$narxos_host/api/sections', options: service.option);

    if (response.data is Map<String, dynamic>) {
      final Map<String, dynamic> data = response.data;
      final SectionsIndexModel sectionsIndex = SectionsIndexModel.fromJson(data);

      return [sectionsIndex]; 
    } else {
      print('Invalid data format');
      return [];
    }
  }
}
