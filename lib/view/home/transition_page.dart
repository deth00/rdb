import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdb_gro_app/route/route_helper.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/app_image.dart';
import 'package:rdb_gro_app/utils/dimensions.dart';

class TransitionPage extends StatefulWidget {
  const TransitionPage({super.key});

  @override
  State<TransitionPage> createState() => _TransitionPageState();
}

class _TransitionPageState extends State<TransitionPage> {
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
                          left: Dimensions.width10, right: Dimensions.width10),
                      child: Image.asset(
                        AppImage.back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: Dimensions.width100, right: Dimensions.width10),
                    child: Icon(
                      Icons.text_snippet_outlined,
                      color: Colors.white,
                      size: Dimensions.iconSize38,
                    ),
                  ),
                  Text(
                    'ການເຄື່ອນໄຫວ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: Dimensions.font20,
                        fontWeight: FontWeight.bold),
                  )
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
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width10,
                  right: Dimensions.width10,
                  top: Dimensions.height10,
                  bottom: Dimensions.height10),
              child: Container(
                alignment: Alignment.centerRight,
                height: Dimensions.height30,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.mainColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(Dimensions.radius15),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(right: Dimensions.width10),
                  child: Text(
                    '02/2024',
                    style: TextStyle(
                        fontSize: Dimensions.font16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: Dimensions.width10),
                    child: Column(
                      children: [
                        Container(
                          // padding: EdgeInsets.all(Dimensions.height10),
                          height: Dimensions.height120,
                          width: double.infinity,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(child: Image.asset(AppImage.profile)),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'ໂອນເງິນອອກ',
                                    style: TextStyle(
                                        fontSize: Dimensions.font16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('ເລກທີອ້າງອີງ:'),
                                  Text('ຫາບັນຊີ:'),
                                  Text('ລາຍລະອຽດ:'),
                                  Text('10/20/2024 09:00:00'),
                                ],
                              ),
                              SizedBox(
                                width: Dimensions.width10,
                              ),
                              Text(
                                '10.000.000.00',
                                style: TextStyle(
                                    fontSize: Dimensions.font16,
                                    color: Colors.red),
                              )
                            ],
                          ),
                        ),
                        const Divider(color: Colors.grey),
                      ],
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
