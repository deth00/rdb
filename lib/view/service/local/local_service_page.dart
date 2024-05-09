import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/app_image.dart';
import 'package:rdb_gro_app/utils/dimensions.dart';

class LocalServicePage extends StatefulWidget {
  const LocalServicePage({super.key});

  @override
  State<LocalServicePage> createState() => _LocalServicePageState();
}

class _LocalServicePageState extends State<LocalServicePage> {
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
                        left: Dimensions.width45, right: Dimensions.width10),
                    child: Image.asset(
                      AppImage.location,
                      // color: Colors.white,
                    ),
                  ),
                  Text(
                    'ສະຖານທີ່ບໍລິການ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: Dimensions.font20,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(height: Dimensions.height10),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(Dimensions.height10),
                    child: Container(
                      padding: EdgeInsets.all(Dimensions.height10),
                      height: Dimensions.height100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(Dimensions.radius20),
                          ),
                          border:
                              Border.all(color: AppColors.mainColor, width: 2),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade400,
                                offset: const Offset(1, 2),
                                blurRadius: 2)
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ສຳນັກງານໃຫຍ່',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: Dimensions.font20),
                              ),
                              Text(
                                'ທີ່ຕັ້ງຂອງສຳນັກງານໃຫຍ່ ແລະ ໜ່ວຍບໍການທີ່ຂຶ້ນກັບ',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: Dimensions.font14),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_right_rounded,
                            color: AppColors.mainColor,
                            size: Dimensions.iconSize55,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
