import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:intl/intl.dart';
import 'package:rdb_gro_app/controller/info_crd_controller.dart';
import 'package:rdb_gro_app/route/route_helper.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/app_image.dart';
import 'package:rdb_gro_app/utils/dimensions.dart';

class TransitionDepositPage extends StatefulWidget {
  const TransitionDepositPage({super.key});

  @override
  State<TransitionDepositPage> createState() => _TransitionDepositPageState();
}

class _TransitionDepositPageState extends State<TransitionDepositPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
            // Container(
            //   height: Dimensions.height100,
            //   width: double.infinity,
            //   decoration: BoxDecoration(color: AppColors.bgColor2),
            //   child: Padding(
            //     padding: EdgeInsets.all(Dimensions.height10),
            //     child: Row(
            //       children: [
            //         Image.asset(AppImage.mF),
            //         SizedBox(width: Dimensions.width10),
            //         Column(
            //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text(
            //               '0201 111 xxxxxxx 63',
            //               style: TextStyle(
            //                   fontSize: Dimensions.font20,
            //                   fontWeight: FontWeight.w400),
            //             ),
            //             GestureDetector(
            //               onTap: () {
            //                 Get.toNamed(RouteHelper.getInfo());
            //               },
            //               child: Container(
            //                 height: Dimensions.height30,
            //                 width: Dimensions.width100,
            //                 decoration: BoxDecoration(
            //                     color: AppColors.bgColor,
            //                     borderRadius:
            //                         BorderRadius.circular(Dimensions.radius20),
            //                     boxShadow: [
            //                       BoxShadow(
            //                           color: Colors.grey.shade400,
            //                           offset: const Offset(1, 2),
            //                           blurRadius: 3)
            //                     ]),
            //                 child: Center(
            //                   child: Text(
            //                     'ເບິ່ງຂໍ້ມູນ',
            //                     style: TextStyle(
            //                         color: Colors.white,
            //                         fontWeight: FontWeight.bold,
            //                         fontSize: Dimensions.font16),
            //                   ),
            //                 ),
            //               ),
            //             ),
            //           ],
            //         )
            //       ],
            //     ),
            //   ),
            // ),
            Expanded(
              child: SingleChildScrollView(
                child: GetBuilder<InfoCrdController>(
                  builder: (data) {
                    return ListView.builder(
                      // reverse: true,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: data.groupTest.length,
                      itemBuilder: (context, index) {
                        return Column(
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
                                  color: AppColors.mainColor,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(Dimensions.radius15),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      right: Dimensions.width10),
                                  child: Text(
                                    data.groupTest[index]['date'],
                                    style: TextStyle(
                                        fontSize: Dimensions.font16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 500,
                              width: double.infinity,
                              child: ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: data.historyList.length,
                                  itemBuilder: (context, ind) => data
                                              .historyList[ind].valuedt ==
                                          data.groupTest[index]['valuedt']
                                      ? Text(data.groupTest[index]['message']
                                          [ind]['txrefid'])
                                      : Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: Dimensions.width10),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: Dimensions.height120,
                                                width: double.infinity,
                                                color: Colors.white,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Center(
                                                        child: Image.asset(
                                                      AppImage.profile,
                                                      scale: 1.3,
                                                    )),
                                                    Container(
                                                      height: double.infinity,
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              1.3,
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                'ໂອນເງິນອອກ',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        Dimensions
                                                                            .font16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              Text(
                                                                NumberFormat.currency(
                                                                        locale:
                                                                            'lo',
                                                                        customPattern:
                                                                            '#,### \u00a4',
                                                                        symbol:
                                                                            'ກີບ',
                                                                        decimalDigits:
                                                                            2)
                                                                    .format(data
                                                                        .historyList[
                                                                            index]
                                                                        .amt),
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        Dimensions
                                                                            .font16,
                                                                    color: Colors
                                                                        .red),
                                                              )
                                                              // Text(data.groupTest[ind]['message']['amt'])
                                                            ],
                                                          ),
                                                          Text(data
                                                              .infoaccList[0]
                                                              .acname),
                                                          Text(
                                                              'ບັນຊີ: ${data.historyList[index].txrefid}'),
                                                          Text(
                                                            'ລາຍລະອຽດ: ${data.historyList[index].descr}',
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            maxLines: 1,
                                                          ),
                                                          Text(
                                                            DateFormat(
                                                                    'yyyy-MM-dd – kk:mm')
                                                                .format(data
                                                                    .historyList[
                                                                        index]
                                                                    .valuedt),
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
                                        )),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
                // GetBuilder<InfoCrdController>(
                //   builder: (data) {
                //     return ListView.builder(
                //       physics: NeverScrollableScrollPhysics(),
                //       shrinkWrap: true,
                //       itemCount: data.infoCrdList.first.dCrschdInt.length,
                //       itemBuilder: (context, index) {
                //         return Padding(
                //           padding: EdgeInsets.symmetric(
                //               horizontal: Dimensions.width10),
                //           child: Column(
                //             children: [
                //               Container(
                //                 height: Dimensions.height120,
                //                 width: double.infinity,
                //                 color: Colors.white,
                //                 child: Row(
                //                   mainAxisAlignment:
                //                       MainAxisAlignment.spaceBetween,
                //                   crossAxisAlignment:
                //                       CrossAxisAlignment.start,
                //                   children: [
                //                     Center(
                //                         child: Image.asset(
                //                       AppImage.profile,
                //                       scale: 1.3,
                //                     )),
                //                     Column(
                //                       mainAxisAlignment:
                //                           MainAxisAlignment.center,
                //                       crossAxisAlignment:
                //                           CrossAxisAlignment.start,
                //                       children: [
                //                         Text(
                //                           'ຊຳດອກເບ້ຍ',
                //                           style: TextStyle(
                //                               fontSize: Dimensions.font16,
                //                               fontWeight: FontWeight.bold),
                //                         ),
                //                         Text(data.infoCrdList[index]
                //                             .firstnamela),
                //                         Text(
                //                             'ບັນຊີ: ${data.infoCrdList[index].defacno}'),
                //                         Text('ລາຍລະອຽດ:'),
                //                         Text(data.infoCrdList[index]
                //                             .dCrschdInt[index].duedt),
                //                       ],
                //                     ),
                //                     // SizedBox(
                //                     //   width: Dimensions.width10,
                //                     // ),
                //                     Text(
                //                       NumberFormat.currency(
                //                         locale: 'lo-LO',
                //                         symbol: '',
                //                       ).format(int.parse(data
                //                           .infoCrdList[index]
                //                           .dCrschdPr[index]
                //                           .amt)),
                //                       style: TextStyle(
                //                           fontSize: Dimensions.font16,
                //                           color: Colors.red),
                //                     )
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
                //         );
                //       },
                //     );
                //   },
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
