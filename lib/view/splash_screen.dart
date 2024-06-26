import 'dart:async';
// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdb_gro_app/controller/branch_local_controller.dart';
import 'package:rdb_gro_app/controller/deposit_controller.dart';
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
    await Get.find<DepositController>().getInfo();
    await Get.find<BranchLocalController>().getBranchLocal();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 180),
            ScaleTransition(
              scale: animation,
              child: Center(
                child: Image.asset(AppImage.logoRDB),
              ),
            ),
            SizedBox(height: 180),
            Text(
              'ທະນາຄານພັດທະນາຊົນນະບົດ',
              style: TextStyle(
                  color: AppColors.mainColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            Text(
              'RDB BANK',
              style: TextStyle(
                  color: AppColors.mainColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
