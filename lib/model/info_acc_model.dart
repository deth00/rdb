// To parse this JSON data, do
//
//     final infoAccModel = infoAccModelFromJson(jsonString);

import 'dart:convert';

List<InfoAccModel> infoAccModelFromJson(String str) => List<InfoAccModel>.from(
    json.decode(str).map((x) => InfoAccModel.fromJson(x)));

String infoAccModelToJson(List<InfoAccModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class InfoAccModel {
  int branchid;
  String acno;
  String acname;
  String customercd;
  int dbamt;
  int balance;
  double intpaid;
  DateTime opndt;
  String subsector;

  InfoAccModel({
    required this.branchid,
    required this.acno,
    required this.acname,
    required this.customercd,
    required this.dbamt,
    required this.balance,
    required this.intpaid,
    required this.opndt,
    required this.subsector,
  });

  factory InfoAccModel.fromJson(Map<String, dynamic> json) => InfoAccModel(
        branchid: json["branchid"],
        acno: json["acno"],
        acname: json["acname"],
        customercd: json["customercd"],
        dbamt: json["dbamt"],
        balance: json["balance"],
        intpaid: json["intpaid"]?.toDouble(),
        opndt: DateTime.parse(json["opndt"]),
        subsector: json["subsector"],
      );

  Map<String, dynamic> toJson() => {
        "branchid": branchid,
        "acno": acno,
        "acname": acname,
        "customercd": customercd,
        "dbamt": dbamt,
        "balance": balance,
        "intpaid": intpaid,
        "opndt": opndt.toIso8601String(),
        "subsector": subsector,
      };
}
