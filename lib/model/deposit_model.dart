// To parse this JSON data, do
//
//     final depositModel = depositModelFromJson(jsonString);

import 'dart:convert';

DepositModel depositModelFromJson(String str) =>
    DepositModel.fromJson(json.decode(str));

String depositModelToJson(DepositModel data) => json.encode(data.toJson());

class DepositModel {
  int success;
  DataDeposit data;

  DepositModel({
    required this.success,
    required this.data,
  });

  factory DepositModel.fromJson(Map<String, dynamic> json) => DepositModel(
        success: json["success"],
        data: DataDeposit.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data.toJson(),
      };
}

class DataDeposit {
  int branchid;
  String acno;
  String defacno;
  String acname;
  int customerid;
  double balancee;

  DataDeposit({
    required this.branchid,
    required this.acno,
    required this.defacno,
    required this.acname,
    required this.customerid,
    required this.balancee,
  });

  factory DataDeposit.fromJson(Map<String, dynamic> json) => DataDeposit(
        branchid: int.parse(json["branchid"].toString()),
        acno: json["acno"] ?? Null,
        defacno: json["defacno"],
        acname: json["acname"],
        customerid: int.parse(json["customerid"].toString()),
        balancee: json["balancee"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "branchid": branchid,
        "acno": acno,
        "defacno": defacno,
        "acname": acname,
        "customerid": customerid,
        "balancee": balancee,
      };
}
