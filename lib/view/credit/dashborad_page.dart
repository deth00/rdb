import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdb_gro_app/controller/info_crd_controller.dart';
import 'package:rdb_gro_app/route/route_helper.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/app_image.dart';
import 'package:rdb_gro_app/utils/dimensions.dart';
import 'package:rdb_gro_app/widgets/header.dart';

class DashboradCreditPage extends StatefulWidget {
  const DashboradCreditPage({super.key});

  @override
  State<DashboradCreditPage> createState() => _DashboradCreditPageState();
}

class _DashboradCreditPageState extends State<DashboradCreditPage> {
  @override
  bool isvisible = false;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(
            onTap1: () {
              Get.back();
            },
            text: 'ບັນຊີເງິນກູ້',
            onTaps: () {},
          ),
          GetBuilder<InfoCrdController>(builder: (data) {
            return Container(
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
                          isvisible
                              ? data.infoaccList[0].acno
                              : '231 xxxx xxxx 123',
                          style: TextStyle(
                              fontSize: Dimensions.font20,
                              fontWeight: FontWeight.w400),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isvisible = !isvisible;
                            });
                          },
                          child: Container(
                            height: Dimensions.height30,
                            width: Dimensions.width100,
                            decoration: BoxDecoration(
                                color: AppColors.mainColor,
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
                                'ສະເເດງ',
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
            );
          }),
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
                      Get.toNamed(RouteHelper.getTransition());
                    },
                    child: Container(
                      height: Dimensions.height120,
                      width: Dimensions.width120,
                      decoration: const BoxDecoration(
                          // color: Colors.white,
                          ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            AppImage.trn,
                            scale: 1.2,
                          ),
                          Text(
                            'ການເຄື່ອນໄຫວ',
                            style: TextStyle(fontSize: Dimensions.font12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: Dimensions.width10,
                      horizontal: Dimensions.height10),
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(RouteHelper.getInstallments());
                    },
                    child: Container(
                      height: Dimensions.height120,
                      width: Dimensions.width120,
                      decoration: const BoxDecoration(
                          // color: Colors.white,
                          ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            AppImage.khop,
                            scale: 1.2,
                          ),
                          Text(
                            'ຄົບງວດຊຳລະ',
                            style: TextStyle(fontSize: Dimensions.font12),
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
