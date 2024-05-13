import 'package:get/get.dart';
import 'package:rdb_gro_app/data/api/api_client.dart';
import 'package:rdb_gro_app/utils/app_constants.dart';

class SliderRepo extends GetxService {
  final ApiClient apiClient;
  SliderRepo({required this.apiClient});

  Future<Response> getSlider() async {
    Response response = await apiClient.getData(AppConstants.SLIDE_URL);
    print('Slider ========== ${response.body.toString()}');
    return response;
  }
}
