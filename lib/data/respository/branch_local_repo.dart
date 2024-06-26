import 'package:get/get.dart';
import 'package:rdb_gro_app/data/api/api_client.dart';
import 'package:rdb_gro_app/utils/app_constants.dart';

class BranchLocalRepo extends GetxService {
  final ApiClient apiClient;

  BranchLocalRepo({required this.apiClient});

  Future<Response> getBranchLocal() async {
    Response response = await apiClient.getData(AppConstants.LOCATION_URL);
    return response;
  }

  Future<Response> getBrLocalID(String id) async {
    Response response =
        await apiClient.getData(AppConstants.LOCATIONID_URL(id: id));
    print(' ========================> ${response.body.toString()}');
    return response;
  }
}
