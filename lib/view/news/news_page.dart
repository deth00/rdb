import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdb_gro_app/controller/news_controller.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/app_image.dart';
import 'package:rdb_gro_app/utils/dimensions.dart';
import 'package:rdb_gro_app/view/news/news_loading.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: Dimensions.height55,
              width: double.infinity,
              color: AppColors.bgColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Text(
                    'ຂ່າວສານ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: Dimensions.font20),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          top: Dimensions.height10, right: Dimensions.height10),
                      child: Container()),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: GetBuilder<NewsController>(builder: (data) {
                  return data.isLoading
                      ? ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: data.newsData.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.all(Dimensions.height10),
                              child: GestureDetector(
                                child: Container(
                                  height: Dimensions.height180,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.radius15),
                                    boxShadow: [
                                      BoxShadow(
                                          offset: const Offset(0, 2),
                                          color: Colors.grey.withOpacity(0.5),
                                          blurRadius: 2)
                                    ],
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://web.nbb.com.la/${data.newsData[index].img}'),
                                        fit: BoxFit.cover),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: Dimensions.height60,
                                        width: double.infinity,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: Dimensions.width10),
                                        color: Colors.white,
                                        child: Text(data.newsData[index].title),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          })
                      : const NewsLoading();
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
