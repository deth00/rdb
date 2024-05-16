// To parse this JSON data, do
//
//     final historyModel = historyModelFromJson(jsonString);

import 'dart:convert';

List<HistoryModel> historyModelFromJson(String str) => List<HistoryModel>.from(
    json.decode(str).map((x) => HistoryModel.fromJson(x)));

String historyModelToJson(List<HistoryModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HistoryModel {
  String txrefid;
  DateTime valuedt;
  String txcode;
  int amt;
  String descr;
  String status;
  String usrname;
  int branchid;

  HistoryModel({
    required this.txrefid,
    required this.valuedt,
    required this.txcode,
    required this.amt,
    required this.descr,
    required this.status,
    required this.usrname,
    required this.branchid,
  });

  factory HistoryModel.fromJson(Map<String, dynamic> json) => HistoryModel(
        txrefid: json["txrefid"],
        valuedt: DateTime.parse(json["valuedt"]),
        txcode: json["txcode"],
        amt: json["amt"],
        descr: json["descr"],
        status: json["status"],
        usrname: json["usrname"],
        branchid: json["branchid"],
      );

  Map<String, dynamic> toJson() => {
        "txrefid": txrefid,
        "valuedt": valuedt.toIso8601String(),
        "txcode": txcode,
        "amt": amt,
        "descr": descr,
        "status": status,
        "usrname": usrname,
        "branchid": branchid,
      };
}
