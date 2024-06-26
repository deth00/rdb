import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:rdb_gro_app/controller/info_crd_controller.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/app_image.dart';
import 'package:rdb_gro_app/utils/dimensions.dart';
import 'package:rdb_gro_app/widgets/header.dart';

class NotiPage extends StatefulWidget {
  const NotiPage({super.key});

  @override
  State<NotiPage> createState() => _NotiPageState();
}

class _NotiPageState extends State<NotiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const Header(
              text: 'ແຈ້ງເຕືອນ',
              icon: Icons.notifications_active_rounded,
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
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
                          color: AppColors.bgColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(Dimensions.radius15),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(right: Dimensions.width10),
                          child: Text(
                            '10/4/2024',
                            style: TextStyle(
                                fontSize: Dimensions.font16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.14,
                      width: double.infinity,
                      // color: Colors.amber,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimensions.width10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height:
                                  Dimensions.height100 + Dimensions.height10,
                              width: double.infinity,
                              // color: Colors.red,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                      child: Image.asset(
                                    AppImage.cop,
                                    scale: 0.8,
                                  )),
                                  Container(
                                    height: double.infinity,
                                    width:
                                        MediaQuery.of(context).size.width / 1.3,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'ຊຳລະຕົ້ນທຶນ',
                                              style: TextStyle(
                                                  fontSize: Dimensions.font16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              NumberFormat.currency(
                                                      locale: 'lo',
                                                      customPattern:
                                                          '#,### \u00a4',
                                                      symbol: 'ກີບ',
                                                      decimalDigits: 0)
                                                  .format(10000000),
                                              style: TextStyle(
                                                  fontSize: Dimensions.font16,
                                                  color: Colors.black),
                                            )
                                            // Text(data.groupTest[ind]['message']['amt'])
                                          ],
                                        ),
                                        Text(
                                          'ເລກທີອ້າງອີງ 0201HO021224',
                                          style: TextStyle(
                                              fontSize: Dimensions.font14),
                                        ),
                                        Text(
                                          'ບັນຊີທີ່ໃຊ້ຊຳລະ: ມອບເງິນສົດ',
                                          style: TextStyle(
                                              fontSize: Dimensions.font14),
                                        ),
                                        // Text(
                                        //   'ລາຍລະອຽດ: ${element.descr}',
                                        //   style: TextStyle(
                                        //       fontSize: Dimensions.font14),
                                        //   overflow: TextOverflow.ellipsis,
                                        //   maxLines: 1,
                                        // ),
                                        Text(
                                          '10/4/2024',
                                          style: TextStyle(
                                              fontSize: Dimensions.font14),
                                        ),
                                        // Text(data.historyList[index].valuedt),
                                      ],
                                    ),
                                  ),
                                  // SizedBox(
                                  //   width: Dimensions.width10,
                                  // ),

                                  // Text(
                                  //   data.infoCrdList[index].dCrschdPr[index]
                                  //       .amt,
                                  //   style: TextStyle(
                                  //       fontSize: Dimensions.font16,
                                  //       color: Colors.red),
                                  // )
                                ],
                              ),
                            ),
                            const Divider(color: Colors.grey),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.14,
                      width: double.infinity,
                      // color: Colors.amber,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimensions.width10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height:
                                  Dimensions.height100 + Dimensions.height10,
                              width: double.infinity,
                              // color: Colors.red,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                      child: Image.asset(
                                    AppImage.cop,
                                    scale: 0.8,
                                  )),
                                  Container(
                                    height: double.infinity,
                                    width:
                                        MediaQuery.of(context).size.width / 1.3,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'ຊຳລະຕົ້ນທຶນ',
                                              style: TextStyle(
                                                  fontSize: Dimensions.font16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              NumberFormat.currency(
                                                      locale: 'lo',
                                                      customPattern:
                                                          '#,### \u00a4',
                                                      symbol: 'ກີບ',
                                                      decimalDigits: 0)
                                                  .format(10000000),
                                              style: TextStyle(
                                                  fontSize: Dimensions.font16,
                                                  color: Colors.black),
                                            )
                                            // Text(data.groupTest[ind]['message']['amt'])
                                          ],
                                        ),
                                        Text(
                                          'ເລກທີອ້າງອີງ 0201HO021224',
                                          style: TextStyle(
                                              fontSize: Dimensions.font14),
                                        ),
                                        Text(
                                          'ບັນຊີທີ່ໃຊ້ຊຳລະ: ມອບເງິນສົດ',
                                          style: TextStyle(
                                              fontSize: Dimensions.font14),
                                        ),
                                        // Text(
                                        //   'ລາຍລະອຽດ: ${element.descr}',
                                        //   style: TextStyle(
                                        //       fontSize: Dimensions.font14),
                                        //   overflow: TextOverflow.ellipsis,
                                        //   maxLines: 1,
                                        // ),
                                        Text(
                                          '10/4/2024',
                                          style: TextStyle(
                                              fontSize: Dimensions.font14),
                                        ),
                                        // Text(data.historyList[index].valuedt),
                                      ],
                                    ),
                                  ),
                                  // SizedBox(
                                  //   width: Dimensions.width10,
                                  // ),

                                  // Text(
                                  //   data.infoCrdList[index].dCrschdPr[index]
                                  //       .amt,
                                  //   style: TextStyle(
                                  //       fontSize: Dimensions.font16,
                                  //       color: Colors.red),
                                  // )
                                ],
                              ),
                            ),
                            const Divider(color: Colors.grey),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.14,
                      width: double.infinity,
                      // color: Colors.amber,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimensions.width10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height:
                                  Dimensions.height100 + Dimensions.height10,
                              width: double.infinity,
                              // color: Colors.red,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                      child: Image.asset(
                                    AppImage.inp,
                                    scale: 0.8,
                                  )),
                                  Container(
                                    height: double.infinity,
                                    width:
                                        MediaQuery.of(context).size.width / 1.3,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'ຊຳລະດອກເບ້ຍ',
                                              style: TextStyle(
                                                  fontSize: Dimensions.font16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              NumberFormat.currency(
                                                      locale: 'lo',
                                                      customPattern:
                                                          '#,### \u00a4',
                                                      symbol: 'ກີບ',
                                                      decimalDigits: 0)
                                                  .format(10000000),
                                              style: TextStyle(
                                                  fontSize: Dimensions.font16,
                                                  color: Colors.black),
                                            )
                                            // Text(data.groupTest[ind]['message']['amt'])
                                          ],
                                        ),
                                        Text(
                                          'ເລກທີອ້າງອີງ 123456',
                                          style: TextStyle(
                                              fontSize: Dimensions.font14),
                                        ),
                                        Text(
                                          'ບັນຊີທີ່ໃຊ້ຊຳລະ: ມອບເງິນສົດ',
                                          style: TextStyle(
                                              fontSize: Dimensions.font14),
                                        ),
                                        // Text(
                                        //   'ລາຍລະອຽດ: ${element.descr}',
                                        //   style: TextStyle(
                                        //       fontSize: Dimensions.font14),
                                        //   overflow: TextOverflow.ellipsis,
                                        //   maxLines: 1,
                                        // ),
                                        Text(
                                          '10/4/2024',
                                          style: TextStyle(
                                              fontSize: Dimensions.font14),
                                        ),
                                        // Text(data.historyList[index].valuedt),
                                      ],
                                    ),
                                  ),
                                  // SizedBox(
                                  //   width: Dimensions.width10,
                                  // ),

                                  // Text(
                                  //   data.infoCrdList[index].dCrschdPr[index]
                                  //       .amt,
                                  //   style: TextStyle(
                                  //       fontSize: Dimensions.font16,
                                  //       color: Colors.red),
                                  // )
                                ],
                              ),
                            ),
                            const Divider(color: Colors.grey),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.14,
                      width: double.infinity,
                      // color: Colors.amber,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimensions.width10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height:
                                  Dimensions.height100 + Dimensions.height10,
                              width: double.infinity,
                              // color: Colors.red,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                      child: Image.asset(
                                    AppImage.sms,
                                    scale: 0.8,
                                  )),
                                  Container(
                                    height: double.infinity,
                                    width:
                                        MediaQuery.of(context).size.width / 1.3,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'ແຈ້ງເຕືອນຊຳລະດອກເບ້ຍ',
                                              style: TextStyle(
                                                  fontSize: Dimensions.font16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              NumberFormat.currency(
                                                      locale: 'lo',
                                                      customPattern:
                                                          '#,### \u00a4',
                                                      symbol: 'ກີບ',
                                                      decimalDigits: 0)
                                                  .format(10000000),
                                              style: TextStyle(
                                                  fontSize: Dimensions.font16,
                                                  color: Colors.red),
                                            )
                                            // Text(data.groupTest[ind]['message']['amt'])
                                          ],
                                        ),
                                        Text(
                                          'ເລກທີອ້າງອີງ 123456',
                                          style: TextStyle(
                                              fontSize: Dimensions.font14),
                                        ),
                                        Text(
                                          'ບັນຊີທີ່ໃຊ້ຊຳລະ: ມອບເງິນສົດ',
                                          style: TextStyle(
                                              fontSize: Dimensions.font14),
                                        ),
                                        // Text(
                                        //   'ລາຍລະອຽດ: ${element.descr}',
                                        //   style: TextStyle(
                                        //       fontSize: Dimensions.font14),
                                        //   overflow: TextOverflow.ellipsis,
                                        //   maxLines: 1,
                                        // ),
                                        Text(
                                          '10/4/2024',
                                          style: TextStyle(
                                              fontSize: Dimensions.font14),
                                        ),
                                        // Text(data.historyList[index].valuedt),
                                      ],
                                    ),
                                  ),
                                  // SizedBox(
                                  //   width: Dimensions.width10,
                                  // ),

                                  // Text(
                                  //   data.infoCrdList[index].dCrschdPr[index]
                                  //       .amt,
                                  //   style: TextStyle(
                                  //       fontSize: Dimensions.font16,
                                  //       color: Colors.red),
                                  // )
                                ],
                              ),
                            ),
                            const Divider(color: Colors.grey),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.14,
                      width: double.infinity,
                      // color: Colors.amber,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimensions.width10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height:
                                  Dimensions.height100 + Dimensions.height10,
                              width: double.infinity,
                              // color: Colors.red,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                      child: Image.asset(
                                    AppImage.sms,
                                    scale: 0.8,
                                  )),
                                  Container(
                                    height: double.infinity,
                                    width:
                                        MediaQuery.of(context).size.width / 1.3,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'ແຈ້ງເຕືອນຊຳລະດອກເບ້ຍ',
                                              style: TextStyle(
                                                  fontSize: Dimensions.font16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              NumberFormat.currency(
                                                      locale: 'lo',
                                                      customPattern:
                                                          '#,### \u00a4',
                                                      symbol: 'ກີບ',
                                                      decimalDigits: 0)
                                                  .format(10000000),
                                              style: TextStyle(
                                                  fontSize: Dimensions.font16,
                                                  color: Colors.red),
                                            )
                                            // Text(data.groupTest[ind]['message']['amt'])
                                          ],
                                        ),
                                        Text(
                                          'ເລກທີອ້າງອີງ 123456',
                                          style: TextStyle(
                                              fontSize: Dimensions.font14),
                                        ),
                                        Text(
                                          'ບັນຊີທີ່ໃຊ້ຊຳລະ: ມອບເງິນສົດ',
                                          style: TextStyle(
                                              fontSize: Dimensions.font14),
                                        ),
                                        // Text(
                                        //   'ລາຍລະອຽດ: ${element.descr}',
                                        //   style: TextStyle(
                                        //       fontSize: Dimensions.font14),
                                        //   overflow: TextOverflow.ellipsis,
                                        //   maxLines: 1,
                                        // ),
                                        Text(
                                          '10/4/2024',
                                          style: TextStyle(
                                              fontSize: Dimensions.font14),
                                        ),
                                        // Text(data.historyList[index].valuedt),
                                      ],
                                    ),
                                  ),
                                  // SizedBox(
                                  //   width: Dimensions.width10,
                                  // ),

                                  // Text(
                                  //   data.infoCrdList[index].dCrschdPr[index]
                                  //       .amt,
                                  //   style: TextStyle(
                                  //       fontSize: Dimensions.font16,
                                  //       color: Colors.red),
                                  // )
                                ],
                              ),
                            ),
                            const Divider(color: Colors.grey),
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
                          color: AppColors.bgColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(Dimensions.radius15),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(right: Dimensions.width10),
                          child: Text(
                            '10/4/2024',
                            style: TextStyle(
                                fontSize: Dimensions.font16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Expanded(
            //   child: ListView.builder(
            //       itemCount: 5,
            //       itemBuilder: (context, int) {
            //         return Container(
            //           height: MediaQuery.of(context).size.height * 0.14,
            //           width: double.infinity,
            //           // color: Colors.amber,
            //           child: Padding(
            //             padding: EdgeInsets.symmetric(
            //                 horizontal: Dimensions.width10),
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               crossAxisAlignment: CrossAxisAlignment.center,
            //               children: [
            //                 Container(
            //                   height:
            //                       Dimensions.height100 + Dimensions.height10,
            //                   width: double.infinity,
            //                   // color: Colors.red,
            //                   child: Row(
            //                     mainAxisAlignment:
            //                         MainAxisAlignment.spaceBetween,
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     children: [
            //                       Center(
            //                           child: Image.asset(
            //                         AppImage.profile,
            //                         scale: 1.3,
            //                       )),
            //                       Container(
            //                         height: double.infinity,
            //                         width:
            //                             MediaQuery.of(context).size.width / 1.3,
            //                         child: Column(
            //                           mainAxisAlignment:
            //                               MainAxisAlignment.center,
            //                           crossAxisAlignment:
            //                               CrossAxisAlignment.start,
            //                           children: [
            //                             Row(
            //                               mainAxisAlignment:
            //                                   MainAxisAlignment.spaceBetween,
            //                               children: [
            //                                 Text(
            //                                   'ຊຳລະຕົ້ນທຶນ',
            //                                   style: TextStyle(
            //                                       fontSize: Dimensions.font16,
            //                                       fontWeight: FontWeight.bold),
            //                                 ),
            //                                 Text(
            //                                   NumberFormat.currency(
            //                                           locale: 'lo',
            //                                           customPattern:
            //                                               '#,### \u00a4',
            //                                           symbol: 'ກີບ',
            //                                           decimalDigits: 2)
            //                                       .format(10000000),
            //                                   style: TextStyle(
            //                                       fontSize: Dimensions.font16,
            //                                       color: Colors.red),
            //                                 )
            //                                 // Text(data.groupTest[ind]['message']['amt'])
            //                               ],
            //                             ),
            //                             Text(
            //                               'ເລກທີອ້າງອີງ 123456',
            //                               style: TextStyle(
            //                                   fontSize: Dimensions.font14),
            //                             ),
            //                             Text(
            //                               'ບັນຊີທີ່ໃຊ້ຊຳລະ: ມອບເງິນສົດ',
            //                               style: TextStyle(
            //                                   fontSize: Dimensions.font14),
            //                             ),
            //                             // Text(
            //                             //   'ລາຍລະອຽດ: ${element.descr}',
            //                             //   style: TextStyle(
            //                             //       fontSize: Dimensions.font14),
            //                             //   overflow: TextOverflow.ellipsis,
            //                             //   maxLines: 1,
            //                             // ),
            //                             Text(
            //                               '10/4/2024',
            //                               style: TextStyle(
            //                                   fontSize: Dimensions.font14),
            //                             ),
            //                             // Text(data.historyList[index].valuedt),
            //                           ],
            //                         ),
            //                       ),
            //                       // SizedBox(
            //                       //   width: Dimensions.width10,
            //                       // ),

            //                       // Text(
            //                       //   data.infoCrdList[index].dCrschdPr[index]
            //                       //       .amt,
            //                       //   style: TextStyle(
            //                       //       fontSize: Dimensions.font16,
            //                       //       color: Colors.red),
            //                       // )
            //                     ],
            //                   ),
            //                 ),
            //                 const Divider(color: Colors.grey),
            //               ],
            //             ),
            //           ),
            //         );
            //       }),
            // ),
            // GetBuilder<InfoCrdController>(builder: (data) {
            //   return Expanded(
            //     child: GroupedListView(
            //       elements: data.historyList,
            //       groupBy: (element) => element.valuedt,
            //       groupSeparatorBuilder: (groupByValue) => Padding(
            //         padding: EdgeInsets.only(
            //             left: Dimensions.width10,
            //             right: Dimensions.width10,
            //             top: Dimensions.height10,
            //             bottom: Dimensions.height10),
            //         child: Container(
            //           alignment: Alignment.centerRight,
            //           height: Dimensions.height30,
            //           width: double.infinity,
            //           decoration: BoxDecoration(
            //             color: AppColors.bgColor,
            //             borderRadius: BorderRadius.all(
            //               Radius.circular(Dimensions.radius15),
            //             ),
            //           ),
            //           child: Padding(
            //             padding: EdgeInsets.only(right: Dimensions.width10),
            //             child: Text(
            //               DateFormat('dd/MM/yyyy').format(groupByValue),
            //               style: TextStyle(
            //                   fontSize: Dimensions.font16,
            //                   fontWeight: FontWeight.bold),
            //             ),
            //           ),
            //         ),
            //       ),
            //       itemBuilder: (context, element) => Container(
            //         height: MediaQuery.of(context).size.height * 0.14,
            //         width: double.infinity,
            //         // color: Colors.amber,
            //         child: Padding(
            //           padding:
            //               EdgeInsets.symmetric(horizontal: Dimensions.width10),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             crossAxisAlignment: CrossAxisAlignment.center,
            //             children: [
            //               Container(
            //                 height: Dimensions.height100 + Dimensions.height10,
            //                 width: double.infinity,
            //                 // color: Colors.red,
            //                 child: Row(
            //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   children: [
            //                     Center(
            //                         child: Image.asset(
            //                       AppImage.profile,
            //                       scale: 1.3,
            //                     )),
            //                     Container(
            //                       height: double.infinity,
            //                       width:
            //                           MediaQuery.of(context).size.width / 1.3,
            //                       child: Column(
            //                         mainAxisAlignment: MainAxisAlignment.center,
            //                         crossAxisAlignment:
            //                             CrossAxisAlignment.start,
            //                         children: [
            //                           Row(
            //                             mainAxisAlignment:
            //                                 MainAxisAlignment.spaceBetween,
            //                             children: [
            //                               Text(
            //                                 'ຊຳລະຕົ້ນທຶນ',
            //                                 style: TextStyle(
            //                                     fontSize: Dimensions.font16,
            //                                     fontWeight: FontWeight.bold),
            //                               ),
            //                               Text(
            //                                 NumberFormat.currency(
            //                                         locale: 'lo',
            //                                         customPattern:
            //                                             '#,### \u00a4',
            //                                         symbol: 'ກີບ',
            //                                         decimalDigits: 2)
            //                                     .format(element.amt),
            //                                 style: TextStyle(
            //                                     fontSize: Dimensions.font16,
            //                                     color: Colors.red),
            //                               )
            //                               // Text(data.groupTest[ind]['message']['amt'])
            //                             ],
            //                           ),
            //                           Text(
            //                             'ເລກທີອ້າງອີງ ${data.infoaccList[0].acname}',
            //                             style: TextStyle(
            //                                 fontSize: Dimensions.font14),
            //                           ),
            //                           Text(
            //                             'ບັນຊີທີ່ໃຊ້ຊຳລະ: ມອບເງິນສົດ',
            //                             style: TextStyle(
            //                                 fontSize: Dimensions.font14),
            //                           ),
            //                           // Text(
            //                           //   'ລາຍລະອຽດ: ${element.descr}',
            //                           //   style: TextStyle(
            //                           //       fontSize: Dimensions.font14),
            //                           //   overflow: TextOverflow.ellipsis,
            //                           //   maxLines: 1,
            //                           // ),
            //                           Text(
            //                             DateFormat('dd/MM/yyyy hh:mm')
            //                                 .format(element.valuedt),
            //                             style: TextStyle(
            //                                 fontSize: Dimensions.font14),
            //                           ),
            //                           // Text(data.historyList[index].valuedt),
            //                         ],
            //                       ),
            //                     ),
            //                     // SizedBox(
            //                     //   width: Dimensions.width10,
            //                     // ),

            //                     // Text(
            //                     //   data.infoCrdList[index].dCrschdPr[index]
            //                     //       .amt,
            //                     //   style: TextStyle(
            //                     //       fontSize: Dimensions.font16,
            //                     //       color: Colors.red),
            //                     // )
            //                   ],
            //                 ),
            //               ),
            //               const Divider(color: Colors.grey),
            //             ],
            //           ),
            //         ),
            //       ),
            //       itemComparator: (item1, item2) =>
            //           item1.usrname.compareTo(item2.usrname), // optional
            //       useStickyGroupSeparators: true, // optional
            //       floatingHeader: true, // optional
            //       order: GroupedListOrder.ASC, // optional
            //     ),
            //   );
            // })
          ],
        ),
      ),
    );
  }
}
