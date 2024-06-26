import 'dart:async';

import 'package:get/get.dart';
import 'package:rdb_gro_app/data/api/api_client.dart';
// import 'package:rdb_gro_app/data/api/api_client_local.dart';
import 'package:rdb_gro_app/utils/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

// class AuthRepo {
//   final ApiClientLocal apiClientLocal;
//   AuthRepo({required this.apiClientLocal});

//   Future<Response> login(String phone, String password) async {
//     return await apiClientLocal.postData(
//         AppConstants.LOGIN_URL, {'phone': phone, 'password': password});
//   }
// }

class AuthRepo {
  final ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  AuthRepo({required this.apiClient, required this.sharedPreferences});

  Future<Response> login(String phone, String password) async {
    return await apiClient.postData(
        AppConstants.LOGIN_URL, {'phone': phone, 'password': password});
  }

  Future<Response> logout() async {
    Response response = await apiClient.logout(AppConstants.LOGOUT_URL);
    return response;
  }

  bool userLoggedIn() {
    return sharedPreferences.containsKey(AppConstants.TOKEN);
  }

  // Future<String> getUserToken() async {
  //   return await sharedPreferences.getString(AppConstants.TOKEN) ?? "None";
  // }

  Future<void> saveUserNamberAndPassword(String number, String password) async {
    try {
      await sharedPreferences.setString(AppConstants.PHONE, number);
      await sharedPreferences.setString(AppConstants.PASSWORD, password);
    } catch (e) {
      throw (e);
    }
  }

  void saveAuthState(bool status) async {
    final instance = await sharedPreferences;
    instance.setBool(AppConstants.STATUS, status);
  }

  Future<bool> getAuthState() async {
    final instance = await sharedPreferences;
    if (instance.containsKey(AppConstants.STATUS)) {
      final value = instance.getBool(AppConstants.STATUS);
      return value!;
    } else {
      return false;
    }
  }

  bool clearSharedData() {
    apiClient.token = "";
    apiClient.updateHeaders("");
    return true;
  }
}
