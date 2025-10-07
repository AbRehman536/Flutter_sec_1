// To parse this JSON data, do
//
//     final taskModel = taskModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

TaskModel taskModelFromJson(String str) => TaskModel.fromJson(json.decode(str));

String taskModelToJson(TaskModel data) => json.encode(data.toJson());

class TaskModel {
  String docId;
  String name;
  bool isCompleted;
  int createdAt;

  TaskModel({
    required this.docId,
    required this.name,
    required this.isCompleted,
    required this.createdAt,
  });

  factory TaskModel.fromJson(Map<String, dynamic> json) => TaskModel(
    docId: json["docID"],
    name: json["name"],
    isCompleted: json["isCompleted"],
    createdAt: json["createdAT"],
  );

  Map<String, dynamic> toJson() => {
    "docID": docId,
    "name": name,
    "isCompleted": isCompleted,
    "createdAT": createdAt,
  };
}
