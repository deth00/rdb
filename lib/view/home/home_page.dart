import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdb_gro_app/route/route_helper.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/app_image.dart';

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
              height: 65,
              width: double.infinity,
              color: AppColors.bgColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(
                        Icons.arrow_left_rounded,
                        size: 60,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Text(
                    'RDB GROW',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 22),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, right: 8),
                    child: Column(
                      children: [
                        Image.asset(AppImage.logout),
                        const Text('ອອກລະບົບ',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 170,
                width: double.infinity,
                child: CarouselSlider(
                  options: CarouselOptions(height: 400.0),
                  items: [1, 2, 3, 4, 5].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 3.0),
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(12),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
            ),
            Container(
              height: 150,
              width: double.infinity,
              color: AppColors.bgColor2,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Image.asset(
                        AppImage.photo,
                        scale: 0.85,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Phongsavanh Boubphachanh',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'ພົງສະຫວັນ ບຸບຜາຈັນ',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        Row(
                          children: [
                            const Text(
                              '+85620 xxxx xxxx',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                            const SizedBox(width: 40),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(RouteHelper.getInfo());
                              },
                              child: Container(
                                height: 40,
                                width: 80,
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
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(RouteHelper.getNavbar());
              },
              child: Container(
                height: 165,
                width: double.infinity,
                // color: Colors.amber,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Image.asset(
                        AppImage.mF,
                        scale: 0.85,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'ບັນຊີເງິນກູ້',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            '0201 111 xxxxxxxxxx 63',
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                          Text(
                            'Phongsavanh BPC',
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      AppImage.qr,
                      scale: 0.8,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
