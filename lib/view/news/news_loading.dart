import 'package:flutter/material.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/dimensions.dart';
import 'package:shimmer/shimmer.dart';

class NewsLoading extends StatelessWidget {
  const NewsLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1,
      width: double.infinity,
      // color: AppColors.mainColor,
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(Dimensions.height10),
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => Container(
              height: Dimensions.height180,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius15),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 2),
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 2)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
