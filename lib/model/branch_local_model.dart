import 'dart:convert';

class BranchLocalModel {
  List<Datum> data;

  BranchLocalModel({
    required this.data,
  });

  factory BranchLocalModel.fromRawJson(String str) =>
      BranchLocalModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BranchLocalModel.fromJson(Map<String, dynamic> json) =>
      BranchLocalModel(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  int id;
  String code;
  String name;
  double? latitude;
  double? longitude;

  Datum({
    required this.id,
    required this.code,
    required this.name,
    required this.latitude,
    required this.longitude,
  });

  factory Datum.fromRawJson(String str) => Datum.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        code: json["code"],
        name: json["name"],
        latitude: json["latitude"]?.toDouble() ,
        longitude: json["longitude"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "name": name,
        "latitude": latitude,
        "longitude": longitude,
      };
}
