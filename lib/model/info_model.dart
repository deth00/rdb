// To parse this JSON data, do
//
//     final infoModel = infoModelFromJson(jsonString);

import 'dart:convert';

InfoModel infoModelFromJson(String str) => InfoModel.fromJson(json.decode(str));

String infoModelToJson(InfoModel data) => json.encode(data.toJson());

class InfoModel {
  String fullname;
  String shortname;
  Mname mname;
  String address;
  dynamic email;
  Mphone mphone;
  DateTime opndt;
  String gender;
  DateTime dob;
  int ctmline;
  String firstnameen;
  String lastnameen;
  String firstnamela;
  String lastnamela;
  String pr;
  String dr;
  String vil;
  String poor;
  String fbid;
  String branchid;
  String brname;

  InfoModel({
    required this.fullname,
    required this.shortname,
    required this.mname,
    required this.address,
    required this.email,
    required this.mphone,
    required this.opndt,
    required this.gender,
    required this.dob,
    required this.ctmline,
    required this.firstnameen,
    required this.lastnameen,
    required this.firstnamela,
    required this.lastnamela,
    required this.pr,
    required this.dr,
    required this.vil,
    required this.poor,
    required this.fbid,
    required this.branchid,
    required this.brname,
  });

  factory InfoModel.fromJson(Map<String, dynamic> json) => InfoModel(
        fullname: json["fullname"],
        shortname: json["shortname"],
        mname: Mname.fromJson(json["mname"]),
        address: json["address"],
        email: json["email"],
        mphone: Mphone.fromJson(json["mphone"]),
        opndt: DateTime.parse(json["opndt"]),
        gender: json["gender"],
        dob: DateTime.parse(json["dob"]),
        ctmline: json["ctmline"],
        firstnameen: json["firstnameen"],
        lastnameen: json["lastnameen"],
        firstnamela: json["firstnamela"],
        lastnamela: json["lastnamela"],
        pr: json["pr"],
        dr: json["dr"],
        vil: json["vil"],
        poor: json["poor"],
        fbid: json["fbid"],
        branchid: json["branchid"],
        brname: json["brname"],
      );

  Map<String, dynamic> toJson() => {
        "fullname": fullname,
        "shortname": shortname,
        "mname": mname.toJson(),
        "address": address,
        "email": email,
        "mphone": mphone.toJson(),
        "opndt": opndt.toIso8601String(),
        "gender": gender,
        "dob": dob.toIso8601String(),
        "ctmline": ctmline,
        "firstnameen": firstnameen,
        "lastnameen": lastnameen,
        "firstnamela": firstnamela,
        "lastnamela": lastnamela,
        "pr": pr,
        "dr": dr,
        "vil": vil,
        "poor": poor,
        "fbid": fbid,
        "branchid": branchid,
        "brname": brname,
      };
}

class Mname {
  String ll;
  String fl;
  String le;
  String the2N;
  String fe;

  Mname({
    required this.ll,
    required this.fl,
    required this.le,
    required this.the2N,
    required this.fe,
  });

  factory Mname.fromJson(Map<String, dynamic> json) => Mname(
        ll: json["LL"],
        fl: json["FL"],
        le: json["LE"],
        the2N: json["2N"],
        fe: json["FE"],
      );

  Map<String, dynamic> toJson() => {
        "LL": ll,
        "FL": fl,
        "LE": le,
        "2N": the2N,
        "FE": fe,
      };
}

class Mphone {
  String hp;
  String fp;
  String cp;

  Mphone({
    required this.hp,
    required this.fp,
    required this.cp,
  });

  factory Mphone.fromJson(Map<String, dynamic> json) => Mphone(
        hp: json["HP"],
        fp: json["FP"],
        cp: json["CP"],
      );

  Map<String, dynamic> toJson() => {
        "HP": hp,
        "FP": fp,
        "CP": cp,
      };
}
