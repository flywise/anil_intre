// To parse this JSON data, do
//
//     final faqModel = faqModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<FaqModel> faqModelFromJson(String str) =>
    List<FaqModel>.from(json.decode(str).map((x) => FaqModel.fromJson(x)));

String faqModelToJson(List<FaqModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FaqModel {
  FaqModel({
    required this.id,
    this.answer,
    this.question,
    this.v,
  });

  String id;
  String? answer;
  String? question;
  int? v;

  factory FaqModel.fromJson(Map<String, dynamic> json) => FaqModel(
        id: json["_id"],
        answer: json["answer"],
        question: json["question"],
        v: json["__v"] == null ? null : json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "answer": answer,
        "question": question,
        "__v": v == null ? null : v,
      };
}
