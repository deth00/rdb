import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:rdb_gro_app/utils/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiClientCrd extends GetConnect implements GetxService {
  late String token;
  final String appBaseUrl;
  late SharedPreferences sharedPreferences;

  late Map<String, String> _mainHeaders;

  ApiClientCrd({required this.appBaseUrl, required this.sharedPreferences}) {
    baseUrl = appBaseUrl;
    timeout = const Duration(seconds: 30);
    // token = sharedPreferences.getString(AppConstants.TOKEN_CRD) ?? "";
    token = AppConstants.TOKEN_CRD;
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

  // Future<Response> getData(String uri, {Map<String, String>? headers}) async {
  //   try {
  //     http.Response response0 = await http.get(Uri.parse(appBaseUrl + uri),
  //         headers: headers ?? _mainHeaders);
  //     Response response = handleResponse(response0);

  //     return response;
  //   } catch (e) {
  //     return Response(statusCode: 1, statusText: e.toString());
  //   }
  // }

  Future<Response> postDataCrd(String uri, dynamic body) async {
    try {
      Response response = await post(
        uri, body,
        // query: query,
        // contentType: contentType,
        headers: _mainHeaders,
      );
      response = handleResponse(response);

      if (kDebugMode) {
        // log('====> GetX Response: [${response.statusCode}] $uri\n${response.body}');
      }
      // print(response.body.toString());
      // http.Response response0 = await http.post(Uri.parse(uri),
      //     body: jsonEncode(body), headers: _mainHeaders);
      // Response response = handleResponse(response0);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }

  Response handleResponse(Response response) {
    Response _response = response;
    if (_response.hasError &&
        _response.body != null &&
        _response.body is! String) {
      if (_response.body.toString().startsWith('{errors: [{code:')) {
        _response = Response(
            statusCode: _response.statusCode,
            body: _response.body,
            statusText: "Error");
      } else if (_response.body.toString().startsWith('{message')) {
        _response = Response(
            statusCode: _response.statusCode,
            body: _response.body,
            statusText: _response.body['message']);
      }
    } else if (_response.hasError && _response.body == null) {
      print("The status code is " + _response.statusCode.toString());
      _response = Response(
          statusCode: 0,
          statusText:
              'Connection to API server failed due to internet connection');
    }
    return _response;
  }

  // Response handleResponse(http.Response response) {
  //   dynamic body;
  //   try {
  //     body = jsonDecode(response.body);
  //   } catch (e) {}
  //   Response response0 = Response(
  //       body: body ?? response.body,
  //       bodyString: response.body.toString(),
  //       headers: response.headers,
  //       statusCode: response.statusCode,
  //       statusText: response.reasonPhrase);
  //   return response0;
  // }
}
