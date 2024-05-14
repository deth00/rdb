// To parse this JSON data, do
//
//     final infoCrdModel = infoCrdModelFromJson(jsonString);

import 'dart:convert';

List<InfoCrdModel> infoCrdModelFromJson(String str) => List<InfoCrdModel>.from(json.decode(str).map((x) => InfoCrdModel.fromJson(x)));

String infoCrdModelToJson(List<InfoCrdModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class InfoCrdModel {
    String acno;
    String defacno;
    String firstnamela;
    String lastnamela;
    int branchid;
    String branchName;
    String acname;
    String address;
    Mphone mphone;
    int balance;
    double intamt;
    List<DCrschd> dCrschdPr;
    List<DCrschd> dCrschdInt;
    String crdsts;

    InfoCrdModel({
        required this.acno,
        required this.defacno,
        required this.firstnamela,
        required this.lastnamela,
        required this.branchid,
        required this.branchName,
        required this.acname,
        required this.address,
        required this.mphone,
        required this.balance,
        required this.intamt,
        required this.dCrschdPr,
        required this.dCrschdInt,
        required this.crdsts,
    });

    factory InfoCrdModel.fromJson(Map<String, dynamic> json) => InfoCrdModel(
        acno: json["acno"],
        defacno: json["defacno"],
        firstnamela: json["firstnamela"],
        lastnamela: json["lastnamela"],
        branchid: json["branchid"],
        branchName: json["branch_name"],
        acname: json["acname"],
        address: json["address"],
        mphone: Mphone.fromJson(json["mphone"]),
        balance: json["balance"],
        intamt: json["intamt"]?.toDouble(),
        dCrschdPr: List<DCrschd>.from(json["d_crschd_pr"].map((x) => DCrschd.fromJson(x))),
        dCrschdInt: List<DCrschd>.from(json["d_crschd_int"].map((x) => DCrschd.fromJson(x))),
        crdsts: json["crdsts"],
    );

    Map<String, dynamic> toJson() => {
        "acno": acno,
        "defacno": defacno,
        "firstnamela": firstnamela,
        "lastnamela": lastnamela,
        "branchid": branchid,
        "branch_name": branchName,
        "acname": acname,
        "address": address,
        "mphone": mphone.toJson(),
        "balance": balance,
        "intamt": intamt,
        "d_crschd_pr": List<dynamic>.from(dCrschdPr.map((x) => x.toJson())),
        "d_crschd_int": List<dynamic>.from(dCrschdInt.map((x) => x.toJson())),
        "crdsts": crdsts,
    };
}

class DCrschd {
    String defacno;
    String dueno;
    String duedt;
    String amt;
    String paid;

    DCrschd({
        required this.defacno,
        required this.dueno,
        required this.duedt,
        required this.amt,
        required this.paid,
    });

    factory DCrschd.fromJson(Map<String, dynamic> json) => DCrschd(
        defacno: json["defacno"],
        dueno: json["dueno"],
        duedt: json["duedt"],
        amt: json["amt"],
        paid: json["paid"],
    );

    Map<String, dynamic> toJson() => {
        "defacno": defacno,
        "dueno": dueno,
        "duedt": duedt,
        "amt": amt,
        "paid": paid,
    };
}

class Mphone {
    String fp;
    String hp;
    String cp;

    Mphone({
        required this.fp,
        required this.hp,
        required this.cp,
    });

    factory Mphone.fromJson(Map<String, dynamic> json) => Mphone(
        fp: json["FP"],
        hp: json["HP"],
        cp: json["CP"],
    );

    Map<String, dynamic> toJson() => {
        "FP": fp,
        "HP": hp,
        "CP": cp,
    };
}
