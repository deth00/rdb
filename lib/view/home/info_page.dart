import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdb_gro_app/controller/info_crd_controller.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/app_image.dart';
import 'package:rdb_gro_app/utils/dimensions.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.bgColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Text(
                    'ຂໍ້ມູນບັນຊີ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: Dimensions.font20),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: Dimensions.height10, right: Dimensions.height10),
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
            Padding(
              padding: EdgeInsets.all(Dimensions.height10),
              child: Container(
                height: Dimensions.height180,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.mainColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(Dimensions.radius15),
                  ),
                ),
              ),
            ),
            GetBuilder<InfoCrdController>(builder: (data) {
              return Column(
                children: [
                  Container(
                    height: Dimensions.height100,
                    width: double.infinity,
                    // color: AppColors.mainColor,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: Dimensions.width10,
                              horizontal: Dimensions.height10),
                          child: Image.asset(AppImage.profile),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('ຊື່ບັນຊີ: ${data.infoList[0].shortname}'),
                            // SizedBox(height: Dimensions.height10),
                            Row(
                              children: [
                                Text('ເລກບັນຊີ: ${data.infoaccList[0].acno}'),
                                SizedBox(width: Dimensions.width45),
                                Image.asset(AppImage.show),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: Dimensions.width10, right: Dimensions.width10),
                    child: const Divider(
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: Dimensions.width20,
                        horizontal: Dimensions.height20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'ປະເພດ: ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimensions.font16),
                            ),
                            Text(
                              'ເລກທີ່ສັນຍາ: ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimensions.font16),
                            ),
                            Text(
                              'ໄລຍະກູ້ຢືມ: ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimensions.font16),
                            ),
                            Text(
                              'ຍອດໜີ້: ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimensions.font16),
                            ),
                            Text(
                              'ອັດຕາດອກເບ້ຍ: ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimensions.font16),
                            ),
                            Text(
                              'ຊັ້ນໜີ້: ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimensions.font16),
                            ),
                          ],
                        ),
                        SizedBox(width: Dimensions.width10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ປະເພດ: ',
                              style: TextStyle(fontSize: Dimensions.font16),
                            ),
                            Text(
                              'ເລກທີ່ສັນຍາ: ',
                              style: TextStyle(fontSize: Dimensions.font16),
                            ),
                            Text(
                              'ໄລຍະກູ້ຢືມ: ',
                              style: TextStyle(fontSize: Dimensions.font16),
                            ),
                            Text(
                              '${data.infoaccList[0].balance} ',
                              style: TextStyle(fontSize: Dimensions.font16),
                            ),
                            Text(
                              '${data.infoaccList[0].intpaid}',
                              style: TextStyle(fontSize: Dimensions.font16),
                            ),
                            Text(
                              'ຊັ້ນໜີ້: ',
                              style: TextStyle(fontSize: Dimensions.font16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
