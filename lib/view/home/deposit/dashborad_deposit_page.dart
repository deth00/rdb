import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdb_gro_app/route/route_helper.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/app_image.dart';
import 'package:rdb_gro_app/utils/dimensions.dart';

class DeshboradDepositPage extends StatefulWidget {
  const DeshboradDepositPage({super.key});

  @override
  State<DeshboradDepositPage> createState() => _DeshboradDepositPageState();
}

class _DeshboradDepositPageState extends State<DeshboradDepositPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: Dimensions.height55,
            width: double.infinity,
            color: AppColors.bgColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: Dimensions.width10, right: Dimensions.width10),
                    child: Image.asset(
                      AppImage.back,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  'ບັນຊີເງິນຝາກ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: Dimensions.font20),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: Dimensions.height10, right: Dimensions.height10),
                  child: Column(
                    children: [
                      Image.asset(
                        AppImage.logout,
                        scale: 1.3,
                      ),
                      Text('ອອກລະບົບ',
                          style: TextStyle(
                              fontSize: Dimensions.font12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: Dimensions.height100,
            width: double.infinity,
            decoration: BoxDecoration(color: AppColors.bgColor2),
            child: Padding(
              padding: EdgeInsets.all(Dimensions.height10),
              child: Row(
                children: [
                  Image.asset(AppImage.mF),
                  SizedBox(width: Dimensions.width10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '0201 111 xxxxxxx 63',
                        style: TextStyle(
                            fontSize: Dimensions.font20,
                            fontWeight: FontWeight.w400),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(RouteHelper.getInfo());
                        },
                        child: Container(
                          height: Dimensions.height30,
                          width: Dimensions.width100,
                          decoration: BoxDecoration(
                              color: AppColors.bgColor,
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade400,
                                    offset: const Offset(1, 2),
                                    blurRadius: 3)
                              ]),
                          child: Center(
                            child: Text(
                              'ເບິ່ງຂໍ້ມູນ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimensions.font16),
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
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: Dimensions.height10,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: Dimensions.width10,
                      horizontal: Dimensions.height10),
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(RouteHelper.getDepositTransition());
                    },
                    child: Container(
                      height: Dimensions.height120,
                      width: Dimensions.width120,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(AppImage.trn),
                          Text(
                            'ການເຄື່ອນໄຫວ',
                            style: TextStyle(fontSize: Dimensions.font16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
