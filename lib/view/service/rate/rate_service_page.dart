import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/dimensions.dart';
import 'package:rdb_gro_app/widgets/header.dart';

class RateService extends StatefulWidget {
  const RateService({super.key});

  @override
  State<RateService> createState() => _RateServiceState();
}

class _RateServiceState extends State<RateService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Header(
              text: 'ອັດຕາດອກເບ້ຍ',
              onTap1: () {
                Get.back();
              },
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width10,
                  right: Dimensions.width10,
                  top: Dimensions.height10,
                  bottom: Dimensions.height10),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    height: Dimensions.height30 + Dimensions.height20,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      // color: AppColors.mainColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(Dimensions.radius15),
                      ),
                      border: Border.all(color: AppColors.mainColor, width: 2),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(Dimensions.height10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'ເງິນກູ້ໄລຍະສັ້ນ',
                            style: TextStyle(
                                fontSize: Dimensions.font16,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'ອັດຕາດອກເບ້ຍ 5% ຕໍ່ປີ',
                            style: TextStyle(
                                fontSize: Dimensions.font16,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: Dimensions.height10, bottom: Dimensions.height10),
                    child: Container(
                      alignment: Alignment.centerRight,
                      height: Dimensions.height30 + Dimensions.height20,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        // color: AppColors.mainColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(Dimensions.radius15),
                        ),
                        border:
                            Border.all(color: AppColors.mainColor, width: 2),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(Dimensions.height10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'ເງິນກູ້ໄລຍະກາງ',
                              style: TextStyle(
                                  fontSize: Dimensions.font16,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'ອັດຕາດອກເບ້ຍ 6% ຕໍ່ປີ',
                              style: TextStyle(
                                  fontSize: Dimensions.font16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    height: Dimensions.height30 + Dimensions.height20,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      // color: AppColors.mainColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(Dimensions.radius15),
                      ),
                      border: Border.all(color: AppColors.mainColor, width: 2),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(Dimensions.height10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'ເງິນກູ້ໄລຍະຍາວ',
                            style: TextStyle(
                                fontSize: Dimensions.font16,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'ອັດຕາດອກເບ້ຍ 7% ຕໍ່ປີ',
                            style: TextStyle(
                                fontSize: Dimensions.font16,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
