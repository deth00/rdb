// To parse this JSON data, do
//
//     final newsModel = newsModelFromJson(jsonString);

import 'dart:convert';

NewsModel newsModelFromJson(String str) => NewsModel.fromJson(json.decode(str));

String newsModelToJson(NewsModel data) => json.encode(data.toJson());

class NewsModel {
  List<NewsData> data;

  NewsModel({
    required this.data,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        data:
            List<NewsData>.from(json["data"].map((x) => NewsData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class NewsData {
  int id;
  int categoryId;
  String title;
  String subDetail;
  String detail;
  String img;

  NewsData({
    required this.id,
    required this.categoryId,
    required this.title,
    required this.subDetail,
    required this.detail,
    required this.img,
  });

  factory NewsData.fromJson(Map<String, dynamic> json) => NewsData(
        id: json["id"],
        categoryId: json["category_id"],
        title: json["title"],
        subDetail: json["sub_detail"],
        detail: json["detail"],
        img: json["img"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "category_id": categoryId,
        "title": title,
        "sub_detail": subDetail,
        "detail": detail,
        "img": img,
      };
}
