import 'package:get/get.dart';
import 'package:rdb_gro_app/controller/auth_controller.dart';
import 'package:rdb_gro_app/controller/branch_local_controller.dart';
import 'package:rdb_gro_app/controller/deposit_controller.dart';
import 'package:rdb_gro_app/controller/info_crd_controller.dart';
import 'package:rdb_gro_app/controller/news_controller.dart';
import 'package:rdb_gro_app/controller/slider_controller.dart';
import 'package:rdb_gro_app/data/api/api_client.dart';
import 'package:rdb_gro_app/data/api/api_client_crd.dart';
import 'package:rdb_gro_app/data/api/api_client_dps.dart';
import 'package:rdb_gro_app/data/api/api_client_local.dart';
import 'package:rdb_gro_app/data/respository/auth_repo.dart';
import 'package:rdb_gro_app/data/respository/branch_local_repo.dart';
import 'package:rdb_gro_app/data/respository/deposit_repo.dart';
import 'package:rdb_gro_app/data/respository/info_crd_repo.dart';
import 'package:rdb_gro_app/data/respository/news_repo.dart';
import 'package:rdb_gro_app/data/respository/slider_repo.dart';
import 'package:rdb_gro_app/utils/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> init() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  Get.lazyPut(() => sharedPreferences);
  Get.lazyPut(() => ApiClient(
      appBaseUrl: AppConstants.BASE_WEB_URL, sharedPreferences: Get.find()));
  Get.lazyPut(() => ApiClientCrd(
      appBaseUrl: AppConstants.BASE_CRD_URL, sharedPreferences: Get.find()));
  Get.lazyPut(() => ApiClientDps(
      appBaseUrl: AppConstants.BASE_DPS_URL, sharedPreferences: Get.find()));
  Get.lazyPut(() => ApiClientLocal(
      appBaseUrl: AppConstants.BASE_LOCAL_URL, sharedPreferences: Get.find()));

  //repo
  Get.lazyPut(() => SliderRepo(apiClient: Get.find()));
  Get.lazyPut(() => NewsRepo(apiClient: Get.find()));
  Get.lazyPut(() => InfoCrdRepo(apiClientCrd: Get.find()));
  Get.lazyPut(
      () => AuthRepo(apiClient: Get.find(), sharedPreferences: Get.find()));
  Get.lazyPut(() => DepositRepo(apiClientDps: Get.find()));
  Get.lazyPut(() => BranchLocalRepo(apiClient: Get.find()));

  //controller
  Get.lazyPut(() => SliderController(sliderRepo: Get.find()));
  Get.lazyPut(() => NewsController(newsRepo: Get.find()));
  Get.lazyPut(() => InfoCrdController(infoCrdRepo: Get.find()));
  Get.lazyPut(() => AuthController(authRepo: Get.find()));
  Get.lazyPut(() => DepositController(depositRepo: Get.find()));
  Get.lazyPut(() => BranchLocalController(branchLocalRepo: Get.find()));
}
