import 'package:get/get.dart';

import 'package:rdb_gro_app/data/api/api_client_crd.dart';
import 'package:rdb_gro_app/utils/app_constants.dart';

class InfoCrdRepo extends GetxService {
  final ApiClientCrd apiClientCrd;

  InfoCrdRepo({required this.apiClientCrd});

  // Future<Response> getInfoCrd() async {
  //   Response response = await apiClientCrd.postDataCrd(
  //     AppConstants.INFO_CRE_URL,
  //     {
  //       "auth_id": 5,
  //       "auth_name": "nbb",
  //       "branchid": "0301",
  //       "fromDate": "04-10-2024",
  //       "toDate": "05-10-2024"
  //     },
  //   );
  //   // print('Crd ========== ${response.body.toString()}');
  //   return response;
  // }

  Future<Response> getInfo() async {
    Response response = await apiClientCrd.postDataCrd(
      AppConstants.INFO_CRE_URL,
      {"auth_id": "5", "auth_name": "nbb", "ctmcode": "0501099738"},
    );
    // print(response.body.toString());
    return response;
  }

  Future<Response> getInfoAcc() async {
    Response response = await apiClientCrd.postDataCrd(
      AppConstants.INFO_CRE_ACC_URL,
      {"auth_id": "5", "auth_name": "nbb", "ctmcode": "0501099738"},
    );
    return response;
  }
}
