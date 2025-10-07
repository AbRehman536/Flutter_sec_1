// To parse this JSON data, do
//
//     final studentModel = studentModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

StudentModel studentModelFromJson(String str) => StudentModel.fromJson(json.decode(str));

String studentModelToJson(StudentModel data) => json.encode(data.toJson());

class StudentModel {
  String docId;
  String name;
  String rollNo;
  String section;
  int createdAt;

  StudentModel({
    required this.docId,
    required this.name,
    required this.rollNo,
    required this.section,
    required this.createdAt,
  });

  factory StudentModel.fromJson(Map<String, dynamic> json) => StudentModel(
    docId: json["docId"],
    name: json["name"],
    rollNo: json["rollNo"],
    section: json["section"],
    createdAt: json["createdAt"],
  );

  Map<String, dynamic> toJson() => {
    "docId": docId,
    "name": name,
    "rollNo": rollNo,
    "section": section,
    "createdAt": createdAt,
  };
}
