// To parse this JSON data, do
//
//     final notificationModel = notificationModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<NotificationModel> notificationModelFromJson(String str) => List<NotificationModel>.from(json.decode(str).map((x) => NotificationModel.fromJson(x)));

String notificationModelToJson(List<NotificationModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class NotificationModel {
    NotificationModel({
         required this.id,
         required this.postedTo,
         required this.title,
         required this.description,
         required this.createdAt,
         required this.updatedAt,
         required this.v,
    });

    String id;
    String postedTo;
    String title;
    String description;
    DateTime createdAt;
    DateTime updatedAt;
    int v;

    factory NotificationModel.fromJson(Map<String, dynamic> json) => NotificationModel(
        id: json["_id"],
        postedTo: json["postedTo"],
        title: json["title"],
        description: json["description"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "postedTo": postedTo,
        "title": title,
        "description": description,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
    };
}
