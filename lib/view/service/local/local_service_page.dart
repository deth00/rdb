import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdb_gro_app/controller/branch_local_controller.dart';
import 'package:rdb_gro_app/route/route_helper.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/dimensions.dart';
import 'package:rdb_gro_app/widgets/header.dart';

class LocalServicePage extends StatefulWidget {
  const LocalServicePage({super.key});

  @override
  State<LocalServicePage> createState() => _LocalServicePageState();
}

class _LocalServicePageState extends State<LocalServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Header(
              text: 'ສະຖານທີ່ບໍລິການ',
              onTap1: () {
                Get.back();
              },
            ),
            SizedBox(height: Dimensions.height10),
            GetBuilder<BranchLocalController>(builder: (data) {
              return data.isLoading
                  ? Expanded(
                      child: ListView.builder(
                        itemCount: data.local.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.all(Dimensions.height10),
                            child: GestureDetector(
                              onTap: () {
                                Get.find<BranchLocalController>()
                                    .getbyId(data.local[index].id.toString());

                                Get.toNamed(
                                  RouteHelper.getMap(index),
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.all(Dimensions.height10),
                                height: Dimensions.height100,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(Dimensions.radius20),
                                    ),
                                    border: Border.all(
                                        color: AppColors.mainColor, width: 2),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade400,
                                          offset: const Offset(1, 2),
                                          blurRadius: 2)
                                    ]),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          data.local[index].name,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: Dimensions.font20),
                                        ),
                                        SizedBox(
                                          width: Dimensions.width180 +
                                              Dimensions.width120,
                                          child: Text(
                                            'ທີ່ຕັ້ງຂອງ ${data.local[index].name} ແລະ ໜ່ວຍບໍການທີ່ຂຶ້ນກັບ',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: Dimensions.font14),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            softWrap: false,
                                          ),
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
                            ),
                          );
                        },
                      ),
                    )
                  : const Expanded(
                      child: Center(child: CircularProgressIndicator()));
            }),
          ],
        ),
      ),
    );
  }
}
