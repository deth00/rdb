import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdb_gro_app/route/route_helper.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/app_image.dart';
import 'package:rdb_gro_app/utils/dimensions.dart';
import 'package:rdb_gro_app/widgets/header.dart';
import 'package:rdb_gro_app/widgets/service_buttom.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({super.key});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const Header(
              text: 'ບໍລິການອື່ນໆ',
              icon: Icons.grid_view_outlined,
            ),
            // Container(
            //   height: Dimensions.height55,
            //   width: double.infinity,
            //   decoration: BoxDecoration(color: AppColors.bgColor),
            //   child: Row(
            //     children: [
            //       GestureDetector(
            //         onTap: () {
            //           Get.back();
            //         },
            //         child: Padding(
            //           padding: EdgeInsets.only(
            //               left: Dimensions.width10, right: Dimensions.width10),
            //           child: Image.asset(
            //             AppImage.back,
            //             color: Colors.white,
            //           ),
            //         ),
            //       ),
            //       Padding(
            //         padding: EdgeInsets.only(
            //             left: Dimensions.width60, right: Dimensions.width15),
            //         child: Image.asset(
            //           AppImage.other,
            //           color: Colors.white,
            //         ),
            //       ),
            //       Text(
            //         'ບໍລິການອື່ນໆ',
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: Dimensions.font20,
            //             fontWeight: FontWeight.bold),
            //       )
            //     ],
            //   ),
            // ),
            SizedBox(height: Dimensions.height10),
            ServiceButtom(
                title: 'ສະຖານທີ່ບໍລິການ',
                text: 'ສາຂາ ແລະ ໜ່ວຍບໍລິການ',
                image: AppImage.location,
                onpress: () {
                  Get.toNamed(RouteHelper.getLocalService());
                }),
            SizedBox(height: Dimensions.height10),
            ServiceButtom(
              title: 'ຄ່າທຳນຽມ',
              text: 'ຄ່າທຳນຽມບໍລິການຕ່າງໆຂອງ RDB',
              image: AppImage.fees,
              onpress: () {
                Get.toNamed(RouteHelper.getFees());
              },
            ),
            SizedBox(height: Dimensions.height10),
            GestureDetector(
              onTap: () {
                Get.toNamed(RouteHelper.getRateService());
              },
              child: const ServiceButtom(
                  title: 'ອັດຕາດອກເບ້ຍ',
                  text: 'ດອກເບ້ຍເງິນຝາກ ແລະ ກູ້ຢືມ',
                  image: AppImage.rate),
            ),
            SizedBox(height: Dimensions.height10),
            ServiceButtom(
              title: 'ຂ່າວສານ',
              text: 'ເບິ່ງຂໍ້ມູນຂ່າວສານຂອງ ທພບ',
              image: AppImage.news,
              onpress: () {
                Get.toNamed(RouteHelper.getNews());
              },
            ),
          ],
        ),
      ),
    );
  }
}
