import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:rdb_gro_app/controller/info_crd_controller.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/app_image.dart';
import 'package:rdb_gro_app/utils/dimensions.dart';
import 'package:rdb_gro_app/widgets/header.dart';

class TransitionDepositPage extends StatefulWidget {
  const TransitionDepositPage({super.key});

  @override
  State<TransitionDepositPage> createState() => _TransitionDepositPageState();
}

class _TransitionDepositPageState extends State<TransitionDepositPage> {
  @override
  bool isvisible = false;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Header(
              icon: Icons.text_snippet_outlined,
              text: 'ການເຄື່ອນໄຫວ',
              onTap1: () {
                Get.back();
              },
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
            //             left: Dimensions.width100, right: Dimensions.width10),
            //         child: Icon(
            //           Icons.text_snippet_outlined,
            //           color: Colors.white,
            //           size: Dimensions.iconSize38,
            //         ),
            //       ),
            //       Text(
            //         'ການເຄື່ອນໄຫວ',
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: Dimensions.font20,
            //             fontWeight: FontWeight.bold),
            //       )
            //     ],
            //   ),
            // ),
            GetBuilder<InfoCrdController>(builder: (data) {
              return Container(
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                isvisible
                                    ? data.infoaccList[0].acno
                                    : '231 xxxx xxxx 123',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontSize: Dimensions.font20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: Dimensions.width30,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isvisible = !isvisible;
                                  });
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
                                      'ສະເເດງ',
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
                          Row(
                            children: [
                              Image.asset(
                                AppImage.kip,
                                scale: Dimensions.font26,
                                color: AppColors.mainColor,
                              ),
                              SizedBox(width: Dimensions.width10 / 2.5),
                              Text(
                                NumberFormat.currency(
                                        locale: 'lo',
                                        customPattern: '#,### \u00a4',
                                        symbol: 'ກີບ',
                                        decimalDigits: 2)
                                    .format(data.infoaccList[0].balance),
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontSize: Dimensions.font16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
            GetBuilder<InfoCrdController>(builder: (data) {
              return Expanded(
                child: GroupedListView(
                  elements: data.historyList,
                  groupBy: (element) => element.valuedt,
                  groupSeparatorBuilder: (groupByValue) => Padding(
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
                          DateFormat('dd/MM/yyyy').format(groupByValue),
                          style: TextStyle(
                              fontSize: Dimensions.font16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  itemBuilder: (context, element) => Container(
                    height: MediaQuery.of(context).size.height * 0.16,
                    width: double.infinity,
                    // color: Colors.red,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: Dimensions.width10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: Dimensions.height120,
                            width: double.infinity,
                            color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                    child: Image.asset(
                                  AppImage.profile,
                                  scale: 1.3,
                                )),
                                Container(
                                  height: double.infinity,
                                  width:
                                      MediaQuery.of(context).size.width / 1.3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'ຊຳລະ',
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
                                                    decimalDigits: 2)
                                                .format(element.amt),
                                            style: TextStyle(
                                                fontSize: Dimensions.font16,
                                                color: Colors.red),
                                          )
                                          // Text(data.groupTest[ind]['message']['amt'])
                                        ],
                                      ),
                                      Text(
                                        data.infoaccList[0].acname,
                                        style: TextStyle(
                                            fontSize: Dimensions.font14),
                                      ),
                                      Text(
                                        'ບັນຊີ: ${element.txrefid}',
                                        style: TextStyle(
                                            fontSize: Dimensions.font14),
                                      ),
                                      Text(
                                        'ລາຍລະອຽດ: ${element.descr}',
                                        style: TextStyle(
                                            fontSize: Dimensions.font14),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                      Text(
                                        DateFormat('dd/MM/yyyy hh:mm')
                                            .format(element.valuedt),
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
                  itemComparator: (item1, item2) =>
                      item1.usrname.compareTo(item2.usrname), // optional
                  useStickyGroupSeparators: true, // optional
                  floatingHeader: true, // optional
                  order: GroupedListOrder.DESC, // optional
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
