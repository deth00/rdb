import 'package:get/get.dart';
import 'package:rdb_gro_app/data/api/api_client_dps.dart';
import 'package:rdb_gro_app/utils/app_constants.dart';

class DepositRepo extends GetxService {
  final ApiClientDps apiClientDps;

  DepositRepo({required this.apiClientDps});

  Future<Response> getInfo() async {
    Response response = await apiClientDps.postDataDps(
      AppConstants.DEPOSIT_URL,
      {"auth_id": "5", "auth_name": "nbb", "acno": "0101000000174524001"},
    );
    return response;
  }
}
