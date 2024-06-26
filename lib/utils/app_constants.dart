// ignore_for_file: constant_identifier_names

class AppConstants {
  static const String APP_NAME = "RDB BANK";
  static const int APP_VERSION = 1;

  static const String BASE_WEB_URL = "https://web.nbb.com.la/";
  static const String SLIDE_URL = "api/slide";
  static const String NEWS_URL = "api/getpost";
  static const String LOCATION_URL = "api/getlocal";
  static String LOCATIONID_URL({required String id}) {
    return "api/getlocal/$id";
  }

  static const String BASE_CRD_URL = "http://192.168.10.55:6604/nbb/";
  static const String BASE_DPS_URL = "http://192.168.10.55:6602/nbb/";
  static const String INFO_CRE_URL = 'api/ctm/get/info';
  static const String INFO_CRE_ACC_URL = 'api/ctm/get/credit';
  static const String HISTORY_URL = 'api/crd/get_history/info';
  static const String DEPOSIT_URL = 'api/dpt/get/info';
  static const String BASE_LOCAL_URL = 'http://127.0.0.1:8000/';
  static const String LOGIN_URL = 'api/apiloginTest';
  static const String LOGOUT_URL = 'api/apilogout';

  static const String PHONE = "";
  static const String PASSWORD = "";
  static const String STATUS = "";

  static const String TOKEN = "";
  static const String TOKEN_DPS = "";
  static const String TOKEN_CRD =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyZXN1bHQiOnsiYXV0aF9pZCI6NSwiYXV0aF9uYW1lIjoibmJiIiwiYXV0aF9wYXNzIjoiJDJiJDEwJHptUWltdTBCOHI2UmRBWHI5OEc1ZWVwVWJ0a0djVk5SZFdqbGRLMS5vWnUzQTRGSEJFaVRxIiwiYXV0aF9zdGFydCI6IjIwMjMtMDktMTRUMDY6MDk6MDQuMDAwWiJ9LCJpYXQiOjE3MTU1NzI5NzQsImV4cCI6MTcyMzM0ODk3NH0.Qeu30YegewTKnyjyurywbjyCzi8e9SmTtxjddiVhHJw";
}
