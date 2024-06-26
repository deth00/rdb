import 'dart:convert';

class BranchIDLocalModel {
  List<DataID> data;

  BranchIDLocalModel({
    required this.data,
  });

  factory BranchIDLocalModel.fromRawJson(String str) =>
      BranchIDLocalModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BranchIDLocalModel.fromJson(Map<String, dynamic> json) =>
      BranchIDLocalModel(
        data: List<DataID>.from(json["data"].map((x) => DataID.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class DataID {
  int id;
  String code;
  String name;
  double? latitude;
  double? longitude;

  DataID({
    required this.id,
    required this.code,
    required this.name,
    required this.latitude,
    required this.longitude,
  });

  factory DataID.fromRawJson(String str) => DataID.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DataID.fromJson(Map<String, dynamic> json) => DataID(
        id: json["id"],
        code: json["code"],
        name: json["name"],
        latitude: json["latitude"]?.toDouble(),
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
