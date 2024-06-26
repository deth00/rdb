import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdb_gro_app/controller/news_controller.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/app_image.dart';
import 'package:rdb_gro_app/utils/dimensions.dart';
import 'package:rdb_gro_app/view/news/news_loading.dart';
import 'package:rdb_gro_app/widgets/header.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Header(
              text: 'ຂ່າວສານ',
              onTap1: () {
                Get.back();
              },
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
