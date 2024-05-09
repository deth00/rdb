import 'package:get/get.dart';
import 'package:rdb_gro_app/data/api/api_client.dart';
import 'package:rdb_gro_app/utils/app_constants.dart';

class NewsRepo extends GetxService {
  final ApiClient apiClient;
  NewsRepo({required this.apiClient});

  Future<Response> getNews() async {
    Response response = await apiClient.getData(AppConstants.NEWS_URL);
    return response;
  }
}
