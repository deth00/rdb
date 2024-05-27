import 'dart:convert';

// import 'package:collection/collection.dart';
import 'package:get/get.dart';
import 'package:rdb_gro_app/data/respository/info_crd_repo.dart';
import 'package:rdb_gro_app/model/history_model.dart';
import 'package:rdb_gro_app/model/info_acc_model.dart';
import 'package:rdb_gro_app/model/info_model.dart';

import 'package:http/http.dart' as http;

class InfoCrdController extends GetxController {
  final InfoCrdRepo infoCrdRepo;

  InfoCrdController({required this.infoCrdRepo});
  // List<Data> _infoCrdList = [];
  // List<Data> get infoCrdList => _infoCrdList;

  // Future<Response> infoCrd() async {
  //   Response response = await infoCrdRepo.getInfoCrd();
  //   // if (response.statusCode == 200) {
  //   //   _infoCrdList = [];
  //   //   final List result = jsonDecode(response.body).data;
  //   //   for (var data in result) {
  //   //     _infoCrdList.addAll(InfoCrdModel.fromJson(data).data);
  //   //   }
  //   //   update();
  //   // }
  //   if (response.statusCode == 200) {
  //     _infoCrdList = [];
  //     _infoCrdList.addAll(InfoCrdModel.fromJson(response.body).data);
  //     update();
  //   } else {}
  //   return response;
  // }

  List<InfoModel> _infoList = [];
  List<InfoModel> get infoList => _infoList;
  List<InfoAccModel> _infoaccList = [];
  List<InfoAccModel> get infoaccList => _infoaccList;
  List<HistoryModel> _histoyrList = [];
  List<HistoryModel> get historyList => _histoyrList;
  // Map<DateTime, Map<String, Object>> _historyGroup = {};
  // Map<DateTime, Map<String, Object>> get historyGroup => _historyGroup;
  // late Map<String, dynamic> _groupTest = {};
  // Map<String, dynamic> get groupTest => _groupTest;
  List<dynamic> _groupTest = [];
  List<dynamic> get groupTest => _groupTest;

  Future<Response> info() async {
    Response response = await infoCrdRepo.getInfo();
    if (response.statusCode == 200) {
      _infoList = [];
      _infoList.add(InfoModel.fromJson(response.body));
      update();
    }
    return response;
  }

  Future<Response> infoacc() async {
    Response response = await infoCrdRepo.getInfoAcc();
    if (response.statusCode == 200) {
      _infoaccList = [];
      _infoaccList.add(InfoAccModel.fromJson(response.body[0]));
      update();
    }
    // print('INFOACC: =======> ${response.body.toString()}');
    return response;
  }

  final apiUrl = "http://192.168.10.55: 6601/nbb/api/crd/get_history/info";
  final token =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyZXN1bHQiOnsiYXV0aF9pZCI6NSwiYXV0aF9uYW1lIjoibmJiIiwiYXV0aF9wYXNzIjoiJDJiJDEwJHptUWltdTBCOHI2UmRBWHI5OEc1ZWVwVWJ0a0djVk5SZFdqbGRLMS5vWnUzQTRGSEJFaVRxIiwiYXV0aF9zdGFydCI6IjIwMjMtMDktMTRUMDY6MDk6MDQuMDAwWiJ9LCJpYXQiOjE3MTU1NzI5NzQsImV4cCI6MTcyMzM0ODk3NH0.Qeu30YegewTKnyjyurywbjyCzi8e9SmTtxjddiVhHJw';
  Future<void> history() async {
    var response = await http.post(Uri.parse(apiUrl),
        headers: {
          'Content-type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode({
          "auth_id": 5,
          "auth_name": "nbb",
          "acno": "050801001411945",
          "fromDate": "04-10-2022",
          "toDate": "01-12-2030"
        }));

    if (response.statusCode == 200) {
      _histoyrList = [];

      final List result = jsonDecode(response.body);
      // var output = groupBy(result, (element) => element['valuedt']).map(
      //     (key, value) =>
      //         MapEntry(key, {"valuedt": key, "message": value.toList()}));
      // print(output.values.toList());
      // final _historyGroup = groupBy(result, (obj) => obj['valuedt']);
      for (var data in result) {
        _histoyrList.add(HistoryModel.fromJson(data));
        // _historyGroup = groupBy(_histoyrList, (item) => item.valuedt).map(
        //   (key, value) =>
        //       MapEntry(key, {"valuedt": key, "message": value.toList()}),
        // );
        // print(_historyGroup.values.toString());
      }
      for (int i = 0; i < result.length; i++) {
        if (i == 0) {
          _groupTest.add({
            "date": result[i]["valuedt"],
            "message": [result[i]],
          });
        } else {
          bool found = false;
          for (int j = 0; j < _groupTest.length; j++) {
            // print(_groupTest[j]['message']['txrefid']);
            if (_groupTest[j]["date"] == result[i]["valuedt"]) {
              _groupTest[j]["message"].add(result[i]);
              found = true;
              break;
            }
          }
          if (!found) {
            _groupTest.add({
              "date": result[i]['valuedt'],
              "message": [result[i]],
            });
          }
        }
        // print(_groupTest);
        // print("GROUP ================> ${groupTest.toList()}");
      }

      // print(_historyGroup);
      update();
    } else {
      print("Failed to create post!");
    }
  }
}
