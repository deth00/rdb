import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdb_gro_app/route/route_helper.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/app_image.dart';
import 'package:rdb_gro_app/widgets/navbar.dart';

class DashboradPage extends StatefulWidget {
  const DashboradPage({super.key});

  @override
  State<DashboradPage> createState() => _DashboradPageState();
}

class _DashboradPageState extends State<DashboradPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NavBar(),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(color: AppColors.bgColor2),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset(AppImage.mF),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '0201 111 xxxxxxx 63',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(RouteHelper.getInfo());
                        },
                        child: Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                              color: AppColors.bgColor,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade400,
                                    offset: const Offset(1, 2),
                                    blurRadius: 3)
                              ]),
                          child: const Center(
                            child: Text(
                              'ເບິ່ງຂໍ້ມູນ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(AppImage.trn),
                  const Text(
                    'ການເຄື່ອນໄຫວ',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
