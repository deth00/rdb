// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:rdb_gro_app/utils/app_image.dart';
// import 'package:rdb_gro_app/utils/app_colors.dart';

class MyDialog {
  _showSingleAnimationDialog(
      BuildContext context, Indicator indicator, bool showPathBackground) {
    Navigator.push(
      context,
      MaterialPageRoute(
        fullscreenDialog: false,
        builder: (ctx) {
          return Scaffold(
            appBar: AppBar(
              title: Text(indicator.toString().split('.').last),
            ),
            body: Padding(
              padding: const EdgeInsets.all(64),
              child: Center(
                child: LoadingIndicator(
                  indicatorType: indicator,
                  colors: Colors.primaries,
                  strokeWidth: 4.0,
                  pathBackgroundColor:
                      showPathBackground ? Colors.black45 : null,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  showLogoutDialog({required BuildContext context}) async {
    var value = await showDialog(
        context: context,
        builder: (context) {
          Size size = MediaQuery.of(context).size;
          double fixSize = size.width + size.height;
          return AlertDialog(
            // title: Icon(
            //   Icons.exit_to_app,
            //   color: Colors.green,
            //   size: fixSize * 0.05,
            // ),
            title: SizedBox(
              height: fixSize * 0.06,
              child: Image.asset(
                AppImage.logouts,
              ),
            ),
            content: Text(
              'ທ່ານຕ້ອງການອອກຈາກລະບົບຫຼືບໍ່ ?',
              style: TextStyle(fontSize: fixSize * 0.0165),
            ),
            actionsPadding: EdgeInsets.symmetric(
                horizontal: fixSize * 0.015, vertical: fixSize * 0.015),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: fixSize * 0.095,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith(
                                (states) => Colors.grey)),
                        onPressed: () {
                          Get.back();
                        },
                        child: Text(
                          'ຍົກເລີກ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: fixSize * 0.0185,
                          ),
                        )),
                  ),
                  SizedBox(
                    width: fixSize * 0.095,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith(
                                (states) => Colors.green)),
                        onPressed: () {
                          Get.back(result: 'ຕົກລົງ');
                        },
                        child: Text(
                          'ຕົກລົງ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: fixSize * 0.0185,
                          ),
                        )),
                  )
                ],
              )
            ],
          );
        });
    return value;
  }
}
