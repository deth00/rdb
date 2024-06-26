// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:rdb_gro_app/controller/deposit_controller.dart';
import 'package:rdb_gro_app/controller/info_crd_controller.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/app_image.dart';
import 'package:rdb_gro_app/utils/dimensions.dart';

class InfoCreditPage extends StatefulWidget {
  final pageId;
  const InfoCreditPage({super.key, this.pageId});

  @override
  State<InfoCreditPage> createState() => _InfoCreditPageState();
}

class _InfoCreditPageState extends State<InfoCreditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.mainColor,
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
            Expanded(
              child: SingleChildScrollView(
                child: GetBuilder<InfoCrdController>(builder: (data) {
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(Dimensions.height15),
                        child: Container(
                          height: Dimensions.height120,
                          width: Dimensions.width120,
                          decoration: BoxDecoration(
                            color: AppColors.mainColor,
                            borderRadius:
                                BorderRadius.circular(Dimensions.height360),
                          ),
                          child: Icon(
                            Icons.account_box,
                            color: Colors.white,
                            size: Dimensions.height120,
                          ),
                        ),
                      ),
                      ConInfo(
                          title: 'ຊື່ບັນຊີ ',
                          text: data.infoList[0].fullname,
                          style: TextStyle(fontSize: Dimensions.font16)),
                      GetBuilder<DepositController>(builder: (dat) {
                        return ConInfo(
                            title: 'ເລກບັນຊີເງິນຝາກ ',
                            text: dat.deposit[0].acno,
                            style: TextStyle(fontSize: Dimensions.font16));
                      }),
                      ConInfo(
                          title: 'ເລກບັນຊີເງິກູ້ ',
                          text: data.infoaccList[0].acno,
                          style: TextStyle(fontSize: Dimensions.font16)),
                      ConInfo(
                          title: 'ເລກທີສັນຍາ ',
                          text: 'Loan 123456789',
                          style: TextStyle(fontSize: Dimensions.font16)),
                      ConInfo(
                          title: 'ວັນທີປ່ອຍກູ້ ',
                          text: '10/2/2023',
                          style: TextStyle(fontSize: Dimensions.font16)),
                      ConInfo(
                          title: 'ວັນທີ່ໝົດສັນຍາ ',
                          text: '10/2/2024',
                          style: TextStyle(fontSize: Dimensions.font16)),
                      ConInfo(
                          title: 'ໄລຍະກູ້ຢືມ ',
                          text: 'ໄລຍະຍາວ (7ປີ)',
                          style: TextStyle(fontSize: Dimensions.font16)),
                      ConInfo(
                          title: 'ວົງເງິນກູ້ຢືມ ',
                          text: '100,000,000 ກີບ',
                          style: TextStyle(fontSize: Dimensions.font16)),
                      ConInfo(
                          title: 'ຕົ້ນທຶນທີ່ຊຳລແລ້ວ ',
                          text: '70,000,000 ກີບ',
                          style: TextStyle(fontSize: Dimensions.font16)),
                      ConInfo(
                          title: 'ຍອດໜີ້ ',
                          text: NumberFormat.currency(
                                  locale: 'lo',
                                  customPattern: '#,### \u00a4',
                                  symbol: 'ກີບ',
                                  decimalDigits: 2)
                              .format(data.infoaccList[0].balance),
                          style: TextStyle(
                              fontSize: Dimensions.font16, color: Colors.red)),
                      ConInfo(
                          title: 'ດອກເບ້ຍຄ້າງ ',
                          text: NumberFormat.currency(
                                  locale: 'lo',
                                  customPattern: '#,### \u00a4',
                                  symbol: 'ກີບ',
                                  decimalDigits: 2)
                              .format(data.infoaccList[0].intpaid),
                          style: TextStyle(
                              fontSize: Dimensions.font16, color: Colors.red)),
                      ConInfo(
                          title: 'ຊັ້ນໜີ້ ',
                          text: 'A',
                          style: TextStyle(
                              fontSize: Dimensions.font16,
                              color: Colors.green)),
                    ],
                  );
                }),
              ),
            ),

            // Padding(
            //   padding: EdgeInsets.all(Dimensions.height10),
            //   child: Container(
            //     height: Dimensions.height120,
            //     width: double.infinity,
            //     decoration: BoxDecoration(
            //       color: AppColors.mainColor,
            //       // image: DecorationImage(
            //       //     image: AssetImage(AppImage.mF), fit: BoxFit.contain),
            //       borderRadius: BorderRadius.all(
            //         Radius.circular(Dimensions.radius15),
            //       ),
            //     ),
            //     child: GetBuilder<InfoCrdController>(builder: (data) {
            //       return Column(
            //         children: [
            //           Container(
            //             height: Dimensions.height100,
            //             width: double.infinity,
            //             // color: AppColors.mainColor,
            //             child: Row(
            //               children: [
            //                 Padding(
            //                   padding: EdgeInsets.symmetric(
            //                       vertical: Dimensions.width10,
            //                       horizontal: Dimensions.height10),
            //                   child: Image.asset(AppImage.profile),
            //                 ),
            //                 Column(
            //                   mainAxisAlignment: MainAxisAlignment.center,
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   children: [
            //                     Text('ຊື່ບັນຊີ: ${data.infoList[0].shortname}'),
            //                     // SizedBox(height: Dimensions.height10),
            //                     Row(
            //                       children: [
            //                         Text(
            //                           'ເລກບັນຊີ: ${data.infoaccList[0].acno}',
            //                         ),
            //                         SizedBox(width: Dimensions.width45),
            //                         Image.asset(AppImage.show),
            //                       ],
            //                     ),
            //                   ],
            //                 )
            //               ],
            //             ),
            //           ),
            //           Padding(
            //             padding: EdgeInsets.only(
            //                 left: Dimensions.width10,
            //                 right: Dimensions.width10),
            //             child: const Divider(
            //               color: Colors.grey,
            //             ),
            //           ),
            //         ],
            //       );
            //     }),
            //   ),
            // ),
            // GetBuilder<InfoCrdController>(builder: (data) {
            //   return Column(
            //     children: [
            //       Padding(
            //         padding: EdgeInsets.symmetric(
            //             vertical: Dimensions.width20,
            //             horizontal: Dimensions.height20),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.start,
            //           children: [
            //             Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 // Text(
            //                 //   'ປະເພດ: ',
            //                 //   style: TextStyle(
            //                 //       fontWeight: FontWeight.bold,
            //                 //       fontSize: Dimensions.font16),
            //                 // ),
            //                 Text(
            //                   'ເລກທີ່ສັນຍາ : ',
            //                   style: TextStyle(
            //                       fontWeight: FontWeight.bold,
            //                       fontSize: Dimensions.font16),
            //                 ),
            //                 Text(
            //                   'ໄລຍະກູ້ຢືມ : ',
            //                   style: TextStyle(
            //                       fontWeight: FontWeight.bold,
            //                       fontSize: Dimensions.font16),
            //                 ),
            //                 Text(
            //                   'ຍອດໜີ້ : ',
            //                   style: TextStyle(
            //                       fontWeight: FontWeight.bold,
            //                       fontSize: Dimensions.font16),
            //                 ),
            //                 Text(
            //                   'ດອກເບ້ຍຄ້າງ : ',
            //                   style: TextStyle(
            //                       fontWeight: FontWeight.bold,
            //                       fontSize: Dimensions.font16),
            //                 ),
            //                 Text(
            //                   'ຊັ້ນໜີ້ : ',
            //                   style: TextStyle(
            //                       fontWeight: FontWeight.bold,
            //                       fontSize: Dimensions.font16),
            //                 ),
            //               ],
            //             ),
            //             SizedBox(width: Dimensions.width20),
            //             Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 // Text(
            //                 //   ' ',
            //                 //   style: TextStyle(fontSize: Dimensions.font16),
            //                 // ),
            //                 Text(
            //                   ' ',
            //                   style: TextStyle(fontSize: Dimensions.font16),
            //                 ),
            //                 Text(
            //                   ' ',
            //                   style: TextStyle(fontSize: Dimensions.font16),
            //                 ),
            //                 Text(
            //   NumberFormat.currency(
            //           locale: 'lo',
            //           customPattern: '#,### \u00a4',
            //           symbol: 'ກີບ',
            //           decimalDigits: 2)
            //       .format(data.infoaccList[0].balance),
            //   style: TextStyle(fontSize: Dimensions.font16),
            // ),
            //                 Text(
            //   NumberFormat.currency(
            //           locale: 'lo',
            //           customPattern: '#,### \u00a4',
            //           symbol: 'ກີບ',
            //           decimalDigits: 2)
            //       .format(data.infoaccList[0].intpaid),
            //   style: TextStyle(fontSize: Dimensions.font16),
            // ),
            //                 Text(
            //                   '',
            //                   style: TextStyle(fontSize: Dimensions.font16),
            //                 ),
            //               ],
            //             ),
            //           ],
            //         ),
            //       )
            //     ],
            //   );
            // }),
          ],
        ),
      ),
    );
  }

  ConInfo(
      {required String title, required String text, required TextStyle style}) {
    return Container(
      height: Dimensions.height60,
      width: double.infinity,
      padding: EdgeInsets.all(Dimensions.height10),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Colors.grey)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: Dimensions.font16),
          ),
          Text(
            text,
            style: style,
          ),
        ],
      ),
    );
  }
}
