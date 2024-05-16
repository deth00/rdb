import 'dart:async';
// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdb_gro_app/controller/info_crd_controller.dart';
import 'package:rdb_gro_app/controller/news_controller.dart';
import 'package:rdb_gro_app/controller/slider_controller.dart';
import 'package:rdb_gro_app/route/route_helper.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/app_image.dart';
import 'package:rdb_gro_app/utils/dimensions.dart';
// import 'package:http/http.dart' as http;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  Future<void> _loadResources() async {
    await Get.find<SliderController>().getSlider();
    await Get.find<NewsController>().getNews();
    await Get.find<InfoCrdController>().info();
    await Get.find<InfoCrdController>().infoacc();
    await Get.find<InfoCrdController>().history();
  }

  @override
  void initState() {
    _loadResources();
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1))
          ..forward();
    animation = CurvedAnimation(parent: controller, curve: Curves.linear);
    Timer(const Duration(seconds: 2),
        () => Get.offAllNamed(RouteHelper.getLogin()));
    // sendPostRequest();
  }

  // final apiUrl = "http://192.168.10.55:6601/nbb/api/crd/get-schedule";
  // final token =
  //     'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyZXN1bHQiOnsiYXV0aF9pZCI6NSwiYXV0aF9uYW1lIjoibmJiIiwiYXV0aF9wYXNzIjoiJDJiJDEwJHptUWltdTBCOHI2UmRBWHI5OEc1ZWVwVWJ0a0djVk5SZFdqbGRLMS5vWnUzQTRGSEJFaVRxIiwiYXV0aF9zdGFydCI6IjIwMjMtMDktMTRUMDY6MDk6MDQuMDAwWiJ9LCJpYXQiOjE3MTU1NzI5NzQsImV4cCI6MTcyMzM0ODk3NH0.Qeu30YegewTKnyjyurywbjyCzi8e9SmTtxjddiVhHJw';
  // Future<void> sendPostRequest() async {
  //   var response = await http.post(Uri.parse(apiUrl),
  //       headers: {
  //         'Content-type': 'application/json; charset=UTF-8',
  //         'Authorization': 'Bearer $token',
  //       },
  //       body: jsonEncode({
  //         "auth_id": 5,
  //         "auth_name": "nbb",
  //         "branchid": "0301",
  //         "fromDate": "04-10-2024",
  //         "toDate": "05-10-2024"
  //       }));

  //   if (response.statusCode == 200) {
  //     print(response.body.toString());
  //   } else {
  //     print("Failed to create post!");
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: Dimensions.height180),
            ScaleTransition(
              scale: animation,
              child: Center(
                child: Image.asset(AppImage.logoRDB),
              ),
            ),
            SizedBox(height: Dimensions.height180),
            Text(
              'ທະນາຄານພັດທະນາຊົນນະບົດ',
              style: TextStyle(
                  color: AppColors.mainColor,
                  fontWeight: FontWeight.bold,
                  fontSize: Dimensions.font16),
            ),
            Text(
              'RDB BANK',
              style: TextStyle(
                  color: AppColors.mainColor,
                  fontWeight: FontWeight.bold,
                  fontSize: Dimensions.font16),
            ),
          ],
        ),
      ),
    );
  }
}
