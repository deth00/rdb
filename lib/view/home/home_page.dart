import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdb_gro_app/controller/deposit_controller.dart';
import 'package:rdb_gro_app/controller/info_crd_controller.dart';
import 'package:rdb_gro_app/controller/slider_controller.dart';
import 'package:rdb_gro_app/route/route_helper.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/app_image.dart';
import 'package:rdb_gro_app/utils/dimensions.dart';
import 'package:rdb_gro_app/view/slider/slider_loading.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: Dimensions.height55,
                width: double.infinity,
                color: AppColors.mainColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // GestureDetector(
                    //   onTap: () {
                    //     Get.back();
                    //   },
                    //   child: Padding(
                    //     padding: EdgeInsets.only(
                    //         left: Dimensions.width10,
                    //         right: Dimensions.width10),
                    //     child: Image.asset(
                    //       AppImage.back,
                    //       color: Colors.white,
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      width: Dimensions.width30 + Dimensions.width20,
                    ),
                    Text(
                      'RDB GROW',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: Dimensions.font20,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: Dimensions.height10, right: Dimensions.width10),
                      child: Column(
                        children: [
                          Image.asset(
                            AppImage.logout,
                            scale: 1.2,
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
              GetBuilder<SliderController>(
                builder: (data) {
                  if (data.slider.isNotEmpty) {
                    return Padding(
                      padding: EdgeInsets.all(Dimensions.height10),
                      child: SizedBox(
                        height: Dimensions.height120,
                        width: double.infinity,
                        child: CarouselSlider.builder(
                          itemCount: data.slider.length,
                          itemBuilder: (context, index, realIndex) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 3.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                      Dimensions.radius15),
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
                    return const SliderLoading();
                  }
                },
              ),
              GetBuilder<InfoCrdController>(builder: (data) {
                if (data.infoList.isNotEmpty) {
                  return Container(
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
                                data.infoList[0].shortname,
                                style: TextStyle(
                                    fontSize: Dimensions.font16,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: Dimensions.height10),
                              Text(
                                data.infoList[0].fullname,
                                style: TextStyle(
                                    fontSize: Dimensions.font16,
                                    color: Colors.grey),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    data.infoList[0].mphone.hp,
                                    style: TextStyle(
                                        fontSize: Dimensions.font16,
                                        color: Colors.grey),
                                  ),
                                  SizedBox(width: Dimensions.width100),
                                  GestureDetector(
                                    onTap: () {
                                      Get.toNamed(RouteHelper.getInfo());
                                    },
                                    child: Container(
                                      height: Dimensions.height30,
                                      width: Dimensions.width100,
                                      decoration: BoxDecoration(
                                          color: AppColors.mainColor,
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
                  );
                } else {
                  return CircularProgressIndicator(color: AppColors.mainColor);
                }
              }),
              Container(
                height: Dimensions.height120,
                width: double.infinity,
                // color: Colors.amber,
                child: InkWell(
                  onTap: () {
                    Get.toNamed(RouteHelper.getNavDeposit());
                  },
                  child: GetBuilder<DepositController>(builder: (data) {
                    return data.isLoading
                        ? Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: Dimensions.width10,
                                    right: Dimensions.width10),
                                child: Image.asset(
                                  AppImage.mF,
                                  scale:
                                      MediaQuery.of(context).size.height / 750,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(right: Dimensions.width10),
                                child: SizedBox(
                                  width:
                                      Dimensions.width180 + Dimensions.width45,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'ບັນຊີເງິນຝາກ',
                                        style: TextStyle(
                                            fontSize: Dimensions.font20,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        data.deposit[0].acno,
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: Dimensions.font16),
                                      ),
                                      Text(
                                        data.deposit[0].acname,
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: Dimensions.font16),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              // SizedBox(
                              //   width: Dimensions.width10,
                              // ),
                              Padding(
                                padding: EdgeInsets.only(
                                  right: Dimensions.width10,
                                ),
                                child: Image.asset(
                                  AppImage.qr,
                                  scale:
                                      MediaQuery.of(context).size.height / 750,
                                ),
                              )
                            ],
                          )
                        : Center(
                            child: CircularProgressIndicator(
                                color: AppColors.mainColor));
                  }),
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
                child: GestureDetector(onTap: () {
                  Get.toNamed(RouteHelper.getNavCredit());
                }, child: GetBuilder<InfoCrdController>(builder: (credit) {
                  if (credit.infoaccList.isNotEmpty) {
                    return Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: Dimensions.width10,
                              right: Dimensions.width10),
                          child: Image.asset(
                            AppImage.mF,
                            scale: MediaQuery.of(context).size.height / 750,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: Dimensions.width10),
                          child: SizedBox(
                            width: Dimensions.width180 + Dimensions.width45,
                            // color: Colors.amber,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'ບັນຊີເງິນກູ້',
                                  style: TextStyle(
                                      fontSize: Dimensions.font20,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  credit.infoaccList[0].acno,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: Dimensions.font16),
                                ),
                                Text(
                                  credit.infoaccList[0].acname,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: Dimensions.font16),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: Dimensions.width10,
                          ),
                          child: Image.asset(
                            AppImage.qr,
                            scale: MediaQuery.of(context).size.height / 750,
                          ),
                        )
                      ],
                    );
                  } else {
                    return Center(
                      child:
                          CircularProgressIndicator(color: AppColors.mainColor),
                    );
                  }
                })),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
