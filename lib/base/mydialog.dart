// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
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
}
