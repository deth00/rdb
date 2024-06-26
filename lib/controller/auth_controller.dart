import 'package:get/get.dart';
import 'package:rdb_gro_app/data/respository/auth_repo.dart';
import 'package:rdb_gro_app/model/response_model.dart';

class AuthController extends GetxController implements GetxService {
  final AuthRepo authRepo;
  AuthController({required this.authRepo});

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  bool _check = false;
  bool get check => _check;

  Future<ResponseModel> login(String phone, String password) async {
    _isLoading = true;
    update();
    Response response = await authRepo.login(phone, password);
    late ResponseModel responseModel;
    if (response.statusCode == 200) {
      responseModel = ResponseModel(true, response.body["token"]);
    } else {
      responseModel = ResponseModel(false, response.statusText!);
    }
    _isLoading = false;
    update();
    return responseModel;
  }

  bool userLoggout() {
    return authRepo.userLoggedIn();
  }

  bool clearSharedData() {
    return authRepo.clearSharedData();
  }

  void saveUserNamberAndPassword(String number, String password) {
    authRepo.saveUserNamberAndPassword(number, password);
  }

  void saveAuthState(bool status) {
    authRepo.saveAuthState(status);
  }

  Future<bool> getAuthState() {
    return authRepo.getAuthState();
  }

  Future<void> logout() async {
    Response response = await authRepo.logout();
    if (response.statusCode == 200) {
      clearSharedData();
    } else {
      _isLoading = false;
      update();
    }
  }
}
