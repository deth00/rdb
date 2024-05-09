import 'package:flutter/material.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/dimensions.dart';

class ServiceButtom extends StatelessWidget {
  final String title;
  final String text;
  final String image;
  final VoidCallback? onpress;
  const ServiceButtom(
      {super.key,
      required this.title,
      required this.text,
      required this.image,
      this.onpress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        height: Dimensions.height100,
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(
            left: Dimensions.width15,
            right: Dimensions.width15,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: Dimensions.width15),
                    child: Image.asset(
                      image,
                      scale: 0.88,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                              fontSize: Dimensions.font20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          text,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          softWrap: false,
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.mainColor,
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: Dimensions.width60, right: 0),
                child: const Divider(
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
