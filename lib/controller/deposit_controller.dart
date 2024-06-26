import 'package:get/get.dart';
import 'package:rdb_gro_app/data/respository/deposit_repo.dart';
import 'package:rdb_gro_app/model/deposit_model.dart';

class DepositController extends GetxController {
  final DepositRepo depositRepo;

  DepositController({required this.depositRepo});
  List<DataDeposit> _deposit = [];
  List<DataDeposit> get deposit => _deposit;
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  Future<Response> getInfo() async {
    Response response = await depositRepo.getInfo();
    if (response.statusCode == 200) {
      _deposit = [];
      if (response.body['success'] == 1) {
        _deposit.add(DepositModel.fromJson(response.body).data);
      } else {
        throw Exception('Failed to load account data');
      }
      _isLoading = true;
      update();
    } else {
      _isLoading = false;
    }
    return response;
  }
}
