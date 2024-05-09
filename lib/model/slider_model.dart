// To parse this JSON data, do
//
//     final newsSliderModel = newsSliderModelFromJson(jsonString);

import 'dart:convert';

SliderModel newsSliderModelFromJson(String str) =>
    SliderModel.fromJson(json.decode(str));

String newsSliderModelToJson(SliderModel data) => json.encode(data.toJson());

class SliderModel {
  List<Data> data;

  SliderModel({
    required this.data,
  });

  factory SliderModel.fromJson(Map<String, dynamic> json) => SliderModel(
        data: List<Data>.from(json["data"].map((x) => Data.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Data {
  int id;
  String name;
  String img;

  Data({
    required this.id,
    required this.name,
    required this.img,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["name"],
        img: json["img"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "img": img,
      };
}
