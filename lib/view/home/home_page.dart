import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdb_gro_app/controller/slider_controller.dart';
import 'package:rdb_gro_app/route/route_helper.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/app_image.dart';
import 'package:rdb_gro_app/utils/dimensions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: Dimensions.height60,
              width: double.infinity,
              color: AppColors.bgColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_left_rounded,
                      size: Dimensions.iconSize60,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'RDB GROW',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: Dimensions.font20),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: Dimensions.height10, right: Dimensions.width10),
                    child: Column(
                      children: [
                        Image.asset(AppImage.logout),
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
            GetBuilder<SliderController>(
              builder: (data) {
                if (data.slider.isNotEmpty) {
                  return Padding(
                    padding: EdgeInsets.all(Dimensions.height10),
                    child: Container(
                      height: Dimensions.height120,
                      width: double.infinity,
                      child: CarouselSlider.builder(
                        itemCount: data.slider.length,
                        itemBuilder: (context, index, realIndex) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 3.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(Dimensions.radius15),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://web.nbb.com.la/${data.slider[index].img}'),
                                    fit: BoxFit.cover)),
                          );
                        },
                        options: CarouselOptions(
                          autoPlay: true,
                          aspectRatio: 2.0,
                          enlargeCenterPage: true,
                        ),
                      ),
                    ),
                  );
                } else {
                  return const Text('null');
                }
              },
            ),
            Container(
              height: Dimensions.height120,
              width: double.infinity,
              color: AppColors.bgColor2,
              child: Padding(
                padding: EdgeInsets.only(
                    left: Dimensions.width10, right: Dimensions.width10),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: Dimensions.width10),
                      child: Image.asset(
                        AppImage.photo,
                        scale: MediaQuery.of(context).size.height / 750,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Phongsavanh Boubphachanh',
                          style: TextStyle(
                              fontSize: Dimensions.font16,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: Dimensions.height10),
                        Text(
                          'ພົງສະຫວັນ ບຸບຜາຈັນ',
                          style: TextStyle(
                              fontSize: Dimensions.font16, color: Colors.grey),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '+85620 xxxx xxxx',
                              style: TextStyle(
                                  fontSize: Dimensions.font16,
                                  color: Colors.grey),
                            ),
                            SizedBox(width: Dimensions.width45),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(RouteHelper.getInfo());
                              },
                              child: Container(
                                height: Dimensions.height30,
                                width: Dimensions.width100,
                                decoration: BoxDecoration(
                                    color: AppColors.bgColor,
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.radius20),
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
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: Dimensions.height120,
              width: double.infinity,
              // color: Colors.amber,
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(RouteHelper.getNavbar());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: Dimensions.width10, right: Dimensions.width10),
                      child: Image.asset(
                        AppImage.mF,
                        scale: MediaQuery.of(context).size.height / 750,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: Dimensions.width10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'ບັນຊີເງິນຝາກ',
                            style: TextStyle(fontSize: Dimensions.font20),
                          ),
                          Text(
                            '0201 111 xxxxxxxxxx 63',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: Dimensions.font16),
                          ),
                          Text(
                            'Phongsavanh BPC',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: Dimensions.font16),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: Dimensions.width10),
                      child: Image.asset(
                        AppImage.qr,
                        scale: MediaQuery.of(context).size.height / 750,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.width10),
              child: const Divider(
                color: Colors.grey,
              ),
            ),
            Container(
              height: Dimensions.height120,
              width: double.infinity,
              // color: Colors.amber,
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(RouteHelper.getNavbar());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: Dimensions.width10, right: Dimensions.width10),
                      child: Image.asset(
                        AppImage.mF,
                        scale: MediaQuery.of(context).size.height / 750,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: Dimensions.width10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'ບັນຊີເງິນກູ້',
                            style: TextStyle(fontSize: Dimensions.font20),
                          ),
                          Text(
                            '0201 111 xxxxxxxxxx 63',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: Dimensions.font16),
                          ),
                          Text(
                            'Phongsavanh BPC',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: Dimensions.font16),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: Dimensions.width10),
                      child: Image.asset(
                        AppImage.qr,
                        scale: MediaQuery.of(context).size.height / 750,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
