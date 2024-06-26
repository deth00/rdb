import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:rdb_gro_app/utils/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiClient extends GetConnect implements GetxService {
  late String token;
  final String appBaseUrl;
  late SharedPreferences sharedPreferences;

  late Map<String, String> _mainHeaders;

  ApiClient({required this.appBaseUrl, required this.sharedPreferences}) {
    baseUrl = appBaseUrl;
    timeout = const Duration(seconds: 30);
    token = sharedPreferences.getString(AppConstants.TOKEN_CRD) ?? "";
    _mainHeaders = {
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
  }

  void updateHeaders(String token) {
    _mainHeaders = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
    };
  }

  Future<Response> getData(String uri, {Map<String, String>? headers}) async {
    try {
      http.Response response0 = await http.get(Uri.parse(appBaseUrl + uri),
          headers: headers ?? _mainHeaders);
      Response response = handleResponse(response0);

      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }

  Future<Response> postData(String uri, dynamic body) async {
    // try {
    //   Response response = await post(uri, body, headers: _mainHeaders);
    //   return response;
    // } catch (e) {
    //   return Response(statusCode: 1, statusText: e.toString());
    // }
    try {
      // Response response = await post(uri, body, headers: _mainHeaders);
      // print(response.body.toString());
      http.Response response0 = await http.post(Uri.parse(appBaseUrl + uri),
          body: json.encode(body), headers: _mainHeaders);
      Response response = handleResponse(response0);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }

  Future<Response> logout(String uri) async {
    try {
      http.Response response0 =
          await http.post(Uri.parse(appBaseUrl + uri), headers: _mainHeaders);
      Response response = handleResponse(response0);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }

  Response handleResponse(http.Response response) {
    dynamic body;
    try {
      body = jsonDecode(response.body);
    } catch (e) {}
    Response response0 = Response(
        body: body ?? response.body,
        bodyString: response.body.toString(),
        headers: response.headers,
        statusCode: response.statusCode,
        statusText: response.reasonPhrase);
    return response0;
  }
}
