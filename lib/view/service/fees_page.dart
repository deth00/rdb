import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/app_image.dart';
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
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(color: AppColors.bgColor),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Image.asset(
                        AppImage.back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80, right: 10),
                    child: Image.asset(
                      AppImage.fees,
                      // color: Colors.white,
                    ),
                  ),
                  const Text(
                    'ຄ່າທຳນຽມ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
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
