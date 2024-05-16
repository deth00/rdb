import 'package:get/get.dart';
import 'package:rdb_gro_app/controller/info_crd_controller.dart';
import 'package:rdb_gro_app/controller/news_controller.dart';
import 'package:rdb_gro_app/controller/slider_controller.dart';
import 'package:rdb_gro_app/data/api/api_client.dart';
import 'package:rdb_gro_app/data/api/api_client_crd.dart';
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

  //repo
  Get.lazyPut(() => SliderRepo(apiClient: Get.find()));
  Get.lazyPut(() => NewsRepo(apiClient: Get.find()));
  Get.lazyPut(() => InfoCrdRepo(apiClientCrd: Get.find()));

  //controller
  Get.lazyPut(() => SliderController(sliderRepo: Get.find()));
  Get.lazyPut(() => NewsController(newsRepo: Get.find()));
  Get.lazyPut(() => InfoCrdController(infoCrdRepo: Get.find()));
}
