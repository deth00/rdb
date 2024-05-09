import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdb_gro_app/route/route_helper.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/app_image.dart';
import 'package:rdb_gro_app/utils/dimensions.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;
  TextEditingController phoneControl = TextEditingController();
  TextEditingController pwControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Dimensions.height30,
              ),
              Center(
                child: Image.asset(
                  AppImage.logoRDB,
                  scale: 1.2,
                ),
              ),
              Container(
                height: Dimensions.height360,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppImage.bglogin), fit: BoxFit.contain),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    Container(
                      height: Dimensions.height60,
                      width: Dimensions.width360,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: Dimensions.radius15,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: AppTextField(
                        obs: false,
                        controller: phoneControl,
                        text: 'ເບີໂທ 020 xxxx xxxx',
                        icon: const Icon(Icons.account_circle,
                            color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height30,
                    ),
                    Container(
                      height: Dimensions.height60,
                      width: Dimensions.width360,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: Dimensions.radius15,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: AppTextField(
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
                                  ? Icons.remove_red_eye_outlined
                                  : Icons.redo_rounded,
                              color: Colors.grey,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(RouteHelper.getHome());
                      },
                      child: Container(
                        height: Dimensions.height60,
                        width: Dimensions.width360,
                        decoration: BoxDecoration(
                          color: AppColors.bgColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(Dimensions.radius20),
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'login'.tr,
                            style: TextStyle(
                                fontSize: Dimensions.font20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.8),
                          ),
                        ),
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
                        height: Dimensions.height60,
                        width: Dimensions.width180,
                        decoration: BoxDecoration(
                            color: AppColors.bgColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(Dimensions.radius30),
                            ),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade500,
                                  offset: const Offset(0, 3),
                                  blurRadius: 7)
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: Dimensions.width10,
                                  right: Dimensions.width10),
                              child: Image.asset(AppImage.logoF),
                            ),
                            Text(
                              'RDB BANK',
                              style: TextStyle(
                                  fontSize: Dimensions.font16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: Dimensions.height60,
                        width: Dimensions.width180,
                        decoration: BoxDecoration(
                            color: AppColors.bgColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(Dimensions.radius30),
                            ),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade500,
                                  offset: const Offset(0, 3),
                                  blurRadius: 7)
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: Dimensions.width10,
                                  right: Dimensions.width10),
                              child: Image.asset(AppImage.iconW),
                            ),
                            Text(
                              'www.nbb.com.la',
                              style: TextStyle(
                                  fontSize: Dimensions.font16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: Dimensions.height20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(RouteHelper.calendar);
                        },
                        child: Container(
                          height: Dimensions.height60,
                          width: Dimensions.width180,
                          decoration: BoxDecoration(
                              color: AppColors.bgColor,
                              borderRadius: BorderRadius.all(
                                Radius.circular(Dimensions.radius30),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade500,
                                    offset: const Offset(0, 3),
                                    blurRadius: 7)
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: Dimensions.width10,
                                    right: Dimensions.width10),
                                child: Image.asset(AppImage.calendar),
                              ),
                              Text(
                                'calendar'.tr,
                                style: TextStyle(
                                    fontSize: Dimensions.font20,
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
                          height: Dimensions.height60,
                          width: Dimensions.width180,
                          decoration: BoxDecoration(
                              color: AppColors.bgColor,
                              borderRadius: BorderRadius.all(
                                Radius.circular(Dimensions.radius30),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade500,
                                    offset: const Offset(0, 3),
                                    blurRadius: 7)
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: Dimensions.width10,
                                    right: Dimensions.width10),
                                child: Image.asset(
                                  AppImage.other,
                                ),
                              ),
                              Text(
                                'ບໍລິການອື່ນໆ',
                                style: TextStyle(
                                    fontSize: Dimensions.font20,
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
                padding: EdgeInsets.symmetric(vertical: Dimensions.height15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'ສອບຖາມຂໍ້ມູນເພີ່ມຕື່ມ?',
                      style: TextStyle(fontSize: Dimensions.font16),
                    ),
                    SizedBox(width: Dimensions.width10),
                    GestureDetector(
                      child: Container(
                        height: 35,
                        width: 85,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.all(
                              Radius.circular(Dimensions.radius20),
                            ),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade500,
                                  offset: const Offset(0, 1),
                                  blurRadius: 2)
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(AppImage.c),
                            Text(
                              'ຕິດຕໍ່',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.white,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimensions.font16),
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
      ),
    );
  }
}

class AppTextField extends StatelessWidget {
  final String text;
  final Widget icon;
  final Widget? icon1;
  final bool obs;
  final TextEditingController controller;

  const AppTextField({
    super.key,
    required this.text,
    required this.icon,
    this.icon1,
    required this.obs,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.height60,
      width: Dimensions.width360,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: Dimensions.radius15,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: TextField(
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
