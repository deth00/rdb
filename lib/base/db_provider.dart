import 'package:rdb_gro_app/utils/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DBprovider {
  final Future<SharedPreferences> _pref = SharedPreferences.getInstance();

  void saveAuthState(bool status) async {
    final instance = await _pref;
    instance.setBool(AppConstants.STATUS, status);
  }

  Future<bool> getAuthState() async {
    final instance = await _pref;
    if (instance.containsKey(AppConstants.STATUS)) {
     
      final value = instance.getBool(AppConstants.STATUS);
      return value!;
    } else {
      return false;
    }
  }
}
