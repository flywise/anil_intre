import 'dart:convert';

FaqDetailsModel faqDetailsModelFromJson(String str) =>
    FaqDetailsModel.fromJson(json.decode(str));

String faqDetailsModelToJson(FaqDetailsModel data) =>
    json.encode(data.toJson());

class FaqDetailsModel {
  FaqDetailsModel({
    required this.id,
    required this.answer,
    required this.question,
  });

  String? id;
  String? answer;
  String? question;

  factory FaqDetailsModel.fromJson(Map<String, dynamic> json) =>
      FaqDetailsModel(
        id: json["_id"],
        answer: json["answer"],
        question: json["question"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "answer": answer,
        "question": question,
      };
}
