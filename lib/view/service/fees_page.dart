import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/app_image.dart';
import 'package:rdb_gro_app/utils/dimensions.dart';
import 'package:rdb_gro_app/widgets/service_buttom.dart';

class FeesPage extends StatefulWidget {
  const FeesPage({super.key});

  @override
  State<FeesPage> createState() => _FeesPageState();
}

class _FeesPageState extends State<FeesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: Dimensions.height55,
              width: double.infinity,
              decoration: BoxDecoration(color: AppColors.bgColor),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: Dimensions.width20, right: Dimensions.width20),
                      child: Image.asset(
                        AppImage.back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: Dimensions.width60, right: Dimensions.width10),
                    child: Image.asset(
                      AppImage.fees,
                      // color: Colors.white,
                    ),
                  ),
                  Text(
                    'ຄ່າທຳນຽມ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: Dimensions.font20,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(height: Dimensions.height20),
            ServiceButtom(
                title: 'ການບໍລິການດ້ານສິນເຊື່ອ',
                text: 'ລາຍລະອຽດຄ່າບໍລິການດ້ານສິນເຊື່ອປະເພດຕ່າງໆ',
                image: AppImage.fees)
          ],
        ),
      ),
    );
  }
}
