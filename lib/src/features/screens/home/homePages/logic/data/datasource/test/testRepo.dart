import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../../../../token/network_service.dart';
import '../../../../../../../../core/resources/hosting_add.dart';
import '../../../model/news_index_model.dart';

@Injectable()
class MenuyRepositoryy {
  final NetworkService service;

  MenuyRepositoryy(this.service);
  Future<NewsIndexModel> getProfile() async {
    Response response =
        await service.dio.get('$narxos_host/api/news', options: service.option);
    return NewsIndexModel.fromJson(response.data['data']);
  }
}
