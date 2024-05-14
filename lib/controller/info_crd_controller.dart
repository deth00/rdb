import 'dart:convert';

import 'package:get/get.dart';
import 'package:rdb_gro_app/data/respository/info_crd_repo.dart';
import 'package:rdb_gro_app/model/info_crd_model.dart';

class InfoCrdController extends GetxController {
  final InfoCrdRepo infoCrdRepo;

  InfoCrdController({required this.infoCrdRepo});
  List<InfoCrdModel> _infoCrdList = [];
  List<InfoCrdModel> get infoCrdList => _infoCrdList;

  Future<Response> infoCrd() async {
    Response response = await infoCrdRepo.getInfoCrd();
    if (response.statusCode == 200) {
      _infoCrdList = [];
      final List result = jsonDecode(response.bodyString.toString());
      for (var data in result) {
        _infoCrdList.add(InfoCrdModel.fromJson(data));
      }
      update();
    }
    return response;
  }
}
