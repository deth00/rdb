import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';
import 'package:rdb_gro_app/utils/dimensions.dart';
import 'package:shimmer/shimmer.dart';

class SliderLoading extends StatelessWidget {
  const SliderLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(Dimensions.height10),
          child: SizedBox(
            height: Dimensions.height120,
            width: double.infinity,
            child: CarouselSlider.builder(
              itemCount: 1,
              itemBuilder: (context, index, realIndex) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 3.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.radius15),
                  ),
                );
              },
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
            ),
          ),
        ));
  }
}
