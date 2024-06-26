import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:local_auth/local_auth.dart';
import 'package:rdb_gro_app/base/ScreenLock.dart';
import 'package:rdb_gro_app/base/db_provider.dart';
import 'package:rdb_gro_app/base/show_customer_snackbar.dart';
import 'package:rdb_gro_app/controller/auth_controller.dart';
import 'package:rdb_gro_app/route/route_helper.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/app_constants.dart';
import 'package:rdb_gro_app/utils/app_image.dart';
import 'package:rdb_gro_app/utils/dimensions.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LocalAuthentication auth = LocalAuthentication();

  Future<void>? _launched;
  bool _isObscure = true;
  var phoneControl = TextEditingController();
  var pwControl = TextEditingController();
  Future<void> _launchInBrowserView(Uri url) async {
    if (!await launchUrl(url, mode: LaunchMode.inAppBrowserView)) {
      throw Exception('Could not launch $url');
    }
  }

  void _login(AuthController authController) {
    String phone = phoneControl.text.trim();
    String password = pwControl.text.trim();

    if (phone.isEmpty) {
      showCustomerSnackBar("Type in your phone number", title: "Phone number");
    } else if (password.isEmpty) {
      showCustomerSnackBar("Type in your password", title: "Password");
    } else if (password.length < 6) {
      showCustomerSnackBar("Password can not be less than six characters",
          title: "Password");
    } else {
      authController.login(phone, password).then((status) {
        if (status.isSuccess) {
          Get.offAllNamed(RouteHelper.getNavbar());
        } else {
          showCustomerSnackBar(status.message);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Future.delayed(Duration(seconds: 3), () {
    //   Get.find<AuthController>().getAuthState().then((value) {
    //     if (value == false) {
    //       Get.offAllNamed(RouteHelper.getLogin());
    //     } else {
    //       ScreenLock().authenticateUser(path: 'splash-page');
    //     }
    //   });
    // });
    final Uri web = Uri(scheme: 'https', host: 'web.nbb.com.la');
    final Uri fb =
        Uri(scheme: 'https', host: 'www.facebook.com', path: 'nbb.com.la');
    Size size = MediaQuery.of(context).size;
    double fixedSize = size.width + size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: GetBuilder<AuthController>(builder: (authController) {
          return !authController.isLoading
              ? SafeArea(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: fixedSize * 0.02,
                        ),
                        Center(
                          child: Image.asset(
                            AppImage.logoRDB,
                            scale: 1.2,
                          ),
                        ),
                        Container(
                          height: fixedSize * 0.29,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(AppImage.bglogin),
                                fit: BoxFit.contain),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: fixedSize * 0.02,
                              ),
                              Container(
                                height: fixedSize * 0.045,
                                width: fixedSize * 0.29,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: fixedSize * 0.0045,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: AppTextField(
                                  textInputType: TextInputType.phone,
                                  obs: false,
                                  controller: phoneControl,
                                  text: 'ເບີໂທ 020 xxxx xxxx',
                                  icon: const Icon(Icons.account_circle,
                                      color: Colors.grey),
                                ),
                              ),
                              SizedBox(
                                height: fixedSize * 0.02,
                              ),
                              Container(
                                height: fixedSize * 0.045,
                                width: fixedSize * 0.29,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: fixedSize * 0.0045,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: AppTextField(
                                  textInputType: TextInputType.multiline,
                                  obs: _isObscure,
                                  controller: pwControl,
                                  text: 'ລະຫັດ: ********',
                                  icon: const Icon(
                                    Icons.lock_reset,
                                    color: Colors.grey,
                                  ),
                                  icon1: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _isObscure = !_isObscure;
                                        });
                                      },
                                      icon: Icon(
                                        _isObscure
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: Colors.grey,
                                      )),
                                ),
                              ),
                              SizedBox(
                                height: fixedSize * 0.02,
                              ),
                              GestureDetector(
                                onTap: () {
                                  _login(authController);
                                },
                                child: Container(
                                  height: fixedSize * 0.045,
                                  width: fixedSize * 0.29,
                                  decoration: BoxDecoration(
                                    color: AppColors.mainColor,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(fixedSize * 0.016),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: fixedSize * 0.004,
                                        offset: const Offset(0, 6),
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child: Text(
                                      'login'.tr,
                                      style: TextStyle(
                                          fontSize: fixedSize * 0.017,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 0.8),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: fixedSize * 0.012,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.find<AuthController>()
                                      .getAuthState()
                                      .then((value) {
                                    if (value == false) {
                                      Get.offAllNamed(RouteHelper.getLogin());
                                    } else {
                                      ScreenLock()
                                          .authenticateUser(path: 'login');
                                    }
                                  });
                                  // DBprovider().getAuthState().then((value) {
                                  //   if (value == false) {
                                  //     Get.offAllNamed(RouteHelper.getLogin());
                                  //   } else {
                                  //     ScreenLock().authenticateUser(
                                  //         path: 'splash-page');
                                  //   }
                                  // });
                                },
                                child: Container(
                                  height: fixedSize * 0.045,
                                  width: fixedSize * 0.075,
                                  decoration: BoxDecoration(
                                    color: AppColors.mainColor,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(fixedSize * 0.016),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: fixedSize * 0.001,
                                        offset: const Offset(0, 5),
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                      child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.fingerprint,
                                        color: Colors.white,
                                        size: fixedSize * 0.032,
                                      ),
                                      Image.asset(
                                        AppImage.faceID,
                                        color: Colors.white,
                                        scale: fixedSize * 0.009,
                                      ),
                                    ],
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: fixedSize * 0.035,
                                  width: fixedSize * 0.14,
                                  decoration: BoxDecoration(
                                      color: AppColors.mainColor,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(fixedSize * 0.016),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.shade500,
                                            offset: const Offset(0, 3),
                                            blurRadius: fixedSize * 0.002)
                                      ]),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _launched = _launchInBrowserView(fb);
                                      });
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: fixedSize * 0.006,
                                              right: fixedSize * 0.005),
                                          child: Image.asset(AppImage.logoF),
                                        ),
                                        Text(
                                          'RDB BANK',
                                          style: TextStyle(
                                              fontSize: fixedSize * 0.013,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: fixedSize * 0.035,
                                  width: fixedSize * 0.14,
                                  decoration: BoxDecoration(
                                      color: AppColors.mainColor,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(fixedSize * 0.016),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.shade500,
                                            offset: const Offset(0, 3),
                                            blurRadius: 7)
                                      ]),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _launched = _launchInBrowserView(web);
                                      });
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: fixedSize * 0.006,
                                              right: fixedSize * 0.005),
                                          child: Image.asset(AppImage.iconW),
                                        ),
                                        Text(
                                          'www.nbb.com.la',
                                          style: TextStyle(
                                              fontSize: fixedSize * 0.013,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: fixedSize * 0.01),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.toNamed(RouteHelper.calendar);
                                  },
                                  child: Container(
                                    height: fixedSize * 0.035,
                                    width: fixedSize * 0.14,
                                    decoration: BoxDecoration(
                                        color: AppColors.mainColor,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(fixedSize * 0.016),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey.shade500,
                                              offset: const Offset(0, 3),
                                              blurRadius: 7)
                                        ]),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: fixedSize * 0.009,
                                              right: fixedSize * 0.005),
                                          child: Image.asset(AppImage.calendar),
                                        ),
                                        Text(
                                          'calendar'.tr,
                                          style: TextStyle(
                                              fontSize: fixedSize * 0.013,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.toNamed(RouteHelper.getService());
                                  },
                                  child: Container(
                                    height: fixedSize * 0.035,
                                    width: fixedSize * 0.14,
                                    decoration: BoxDecoration(
                                        color: AppColors.mainColor,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(fixedSize * 0.016),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey.shade500,
                                              offset: const Offset(0, 3),
                                              blurRadius: 7)
                                        ]),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: fixedSize * 0.009,
                                              right: fixedSize * 0.005),
                                          child: Image.asset(
                                            AppImage.other,
                                          ),
                                        ),
                                        Text(
                                          'ບໍລິການອື່ນໆ',
                                          style: TextStyle(
                                              fontSize: fixedSize * 0.013,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: fixedSize * 0.01),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'ສອບຖາມຂໍ້ມູນເພີ່ມຕື່ມ?',
                                style: TextStyle(fontSize: fixedSize * 0.012),
                              ),
                              SizedBox(width: fixedSize * 0.008),
                              GestureDetector(
                                child: Container(
                                  height: fixedSize * 0.026,
                                  width: fixedSize * 0.065,
                                  decoration: BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(fixedSize * 0.02),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.shade500,
                                            offset: const Offset(0, 1),
                                            blurRadius: 2)
                                      ]),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset(AppImage.c),
                                      Text(
                                        'ຕິດຕໍ່',
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor: Colors.white,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: fixedSize * 0.013),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : const Center(child: CircularProgressIndicator());
        }));
  }
}

class AppTextField extends StatelessWidget {
  final String text;
  final Widget icon;
  final Widget? icon1;
  final bool obs;
  final TextEditingController controller;
  final TextInputType textInputType;

  const AppTextField({
    super.key,
    required this.text,
    required this.icon,
    this.icon1,
    required this.obs,
    required this.controller,
    required this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 360,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 15,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: TextField(
        keyboardType: textInputType,
        controller: controller,
        obscureText: obs,
        style: const TextStyle(color: Colors.grey),
        decoration: InputDecoration(
          prefixIcon: icon,
          suffixIcon: icon1,
          fillColor: Colors.grey.shade100,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimensions.radius20),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimensions.radius20),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          hintText: text,
          hintStyle: const TextStyle(color: Colors.grey, letterSpacing: 0.8),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimensions.radius20),
          ),
        ),
      ),
    );
  }
}
