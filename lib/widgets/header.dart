import 'package:flutter/material.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/app_image.dart';
import 'package:rdb_gro_app/utils/dimensions.dart';

class Header extends StatelessWidget {
  final String text;
  final IconData? icon;
  final VoidCallback? onTaps;
  final VoidCallback? onTap1;
  const Header(
      {super.key, required this.text, this.icon, this.onTaps, this.onTap1});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.height55,
      width: double.infinity,
      color: AppColors.mainColor,
      child: icon != null
          ? Row(
              children: [
                onTap1 == null
                    ? SizedBox(width: Dimensions.width45)
                    : IconButton(
                        onPressed: onTap1,
                        icon: Image.asset(
                          AppImage.back,
                          color: Colors.white,
                        ),
                      ),
                Padding(
                  padding: EdgeInsets.only(
                      left: Dimensions.width100, right: Dimensions.width10),
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: Dimensions.iconSize24,
                  ),
                ),
                Text(
                  text,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: Dimensions.font20),
                ),
                onTaps == null
                    ? Text('')
                    : Padding(
                        padding: EdgeInsets.only(
                            top: Dimensions.height10,
                            right: Dimensions.width10,
                            left: MediaQuery.of(context).size.width * 0.108),
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
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                onTap1 == null
                    ? const SizedBox()
                    : IconButton(
                        onPressed: onTap1,
                        icon: Image.asset(
                          AppImage.back,
                          color: Colors.white,
                        ),
                      ),
                // GestureDetector(
                //   onTap: onTap1,
                //   child: Padding(
                //     padding: EdgeInsets.only(
                //         left: Dimensions.width10, right: Dimensions.width10),
                //     child: Image.asset(
                //       AppImage.back,
                //       color: Colors.white,
                //     ),
                //   ),
                // ),
                Text(
                  text,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: Dimensions.font20,
                      fontWeight: FontWeight.bold),
                ),
                onTaps == null
                    ? SizedBox(
                        width: Dimensions.width20,
                      )
                    : GestureDetector(
                        onTap: onTaps,
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: Dimensions.height10,
                              right: Dimensions.width10),
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
                      )
              ],
            ),
    );
  }
}
