import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';
import 'package:rdb_gro_app/base/db_provider.dart';
import 'package:rdb_gro_app/controller/auth_controller.dart';
import 'package:rdb_gro_app/route/route_helper.dart';
import 'package:rdb_gro_app/widgets/nav/navbar.dart';

class ScreenLock {
  BuildContext? ctx;
  ScreenLock({this.ctx});

  final LocalAuthentication locaAuth = LocalAuthentication();

  void authenticateUser({String? path, bool? value}) async {
    // bool isBiometricSupported = await locaAuth.isDeviceSupported();
    bool canCheckBiometrics = await locaAuth.canCheckBiometrics;
    // bool isAuthenticationed = false;
    // if (isBiometricSupported && canCheckBiometrics) {
    //   isAuthenticationed = await locaAuth.authenticate(
    //       localizedReason: 'Please complete the biometrics to proceed');
    // }
    if (canCheckBiometrics == true) {
      List<BiometricType> availableBiometrics =
          await locaAuth.getAvailableBiometrics();

      if (Platform.isAndroid) {
        if (availableBiometrics.contains(BiometricType.face)) {
          //Face ID
        } else if (availableBiometrics.contains(BiometricType.fingerprint)) {
          //TouchID
          bool didAuthenticate = await locaAuth.authenticate(
              localizedReason: 'Please authenticate to access app');
          if (path == 'splash-page') {
            if (didAuthenticate == true) {
              // Get.offAllNamed(RouteHelper.getNavbar());
              Navigator.push(ctx!,
                  MaterialPageRoute(builder: (context) => const NavBar()));
            } else {
              SystemNavigator.pop();
            }
          } else {
            if (didAuthenticate == true) {
              Get.find<AuthController>().saveAuthState(value!);
            }
          }
        } else {
          bool didAuthenticate = await locaAuth.authenticate(
              localizedReason: 'Please authenticate to access app');
          if (path == 'login') {
            if (didAuthenticate == true) {
              Get.offAllNamed(RouteHelper.getNavbar());
            } else {
              SystemNavigator.pop();
            }
          } else {
            if (didAuthenticate == true) {
              // DBprovider().saveAuthState(value!);
              Get.find<AuthController>().saveAuthState(value!);
            }
          }
        }
      } else {
        if (availableBiometrics.contains(BiometricType.face)) {
        } else if (availableBiometrics.contains(BiometricType.fingerprint)) {}
      }
    } else {}
  }
}
