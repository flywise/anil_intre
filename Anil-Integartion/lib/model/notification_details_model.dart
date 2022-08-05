// To parse this JSON data, do
//
//     final notificationDetailsModel = notificationDetailsModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

NotificationDetailsModel notificationDetailsModelFromJson(String str) => NotificationDetailsModel.fromJson(json.decode(str));

String notificationDetailsModelToJson(NotificationDetailsModel data) => json.encode(data.toJson());

class NotificationDetailsModel {
    NotificationDetailsModel({
           required this.requiredNotification,
    });

    RequiredNotification requiredNotification;

    factory NotificationDetailsModel.fromJson(Map<String, dynamic> json) => NotificationDetailsModel(
        requiredNotification: RequiredNotification.fromJson(json["requiredNotification"]),
    );

    Map<String, dynamic> toJson() => {
        "requiredNotification": requiredNotification.toJson(),
    };
}

class RequiredNotification {
    RequiredNotification({
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

    factory RequiredNotification.fromJson(Map<String, dynamic> json) => RequiredNotification(
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
