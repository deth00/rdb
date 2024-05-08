import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/app_image.dart';

class LocalServicePage extends StatefulWidget {
  const LocalServicePage({super.key});

  @override
  State<LocalServicePage> createState() => _LocalServicePageState();
}

class _LocalServicePageState extends State<LocalServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(color: AppColors.bgColor),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Image.asset(
                        AppImage.back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60, right: 10),
                    child: Image.asset(
                      AppImage.location,
                      // color: Colors.white,
                    ),
                  ),
                  const Text(
                    'ສະຖານທີ່ບໍລິການ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      height: MediaQuery.of(context).size.height / 10,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                                MediaQuery.of(context).size.width / 18),
                          ),
                          border:
                              Border.all(color: AppColors.mainColor, width: 2),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade400,
                                offset: const Offset(1, 2),
                                blurRadius: 2)
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ສຳນັກງານໃຫຍ່',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 18),
                              ),
                              Text(
                                'ທີ່ຕັ້ງຂອງສຳນັກງານໃຫຍ່ ແລະ ໜ່ວຍບໍການທີ່ຂຶ້ນກັບ',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_right_rounded,
                            color: AppColors.mainColor,
                            size: MediaQuery.of(context).size.height / 13,
                          )
                        ],
                      ),
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
