import 'package:get/get.dart';
import 'package:rdb_gro_app/data/respository/branch_local_repo.dart';
import 'package:rdb_gro_app/model/branch_local_model.dart';

import '../model/branchid_local_model .dart';

class BranchLocalController extends GetxController {
  final BranchLocalRepo branchLocalRepo;
  BranchLocalController({required this.branchLocalRepo});
  List<Datum> _local = [];
  List<Datum> get local => _local;
  List<DataID> _localbyId = [];
  List<DataID> get localbyId => _localbyId;
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> getBranchLocal() async {
    Response response = await branchLocalRepo.getBranchLocal();
    if (response.statusCode == 200) {
      _local = [];
      _local.addAll(BranchLocalModel.fromJson(response.body).data);
      _isLoading = true;
      update();
    } else {
      _isLoading = false;
    }
  }

  Future<void> getbyId(String id) async {
    Response response = await branchLocalRepo.getBrLocalID(id);
    if (response.statusCode == 200) {
      _localbyId = [];
      _localbyId.addAll(BranchIDLocalModel.fromJson(response.body).data);
      _isLoading = true;
      update();
    } else {
      _isLoading = false;
    }
  }
}
