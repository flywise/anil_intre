import 'dart:convert';

import 'package:community/model/notification_model.dart';
import 'package:dio/dio.dart';

class NotificicationProvider {
  Dio client;

  NotificicationProvider({
    required this.client,
  });

  Future<List<NotificationModel>> getNotificicationProvider({required String Id}) async {
    try {
      Response r = await client.get("/api/users/notifications/$Id");

      if (r.statusCode == 200) {
        print(r.data);
        return notificationModelFromJson(jsonEncode(r.data["requiredNotification"]));
      } else {
        return Future.error(r.data["message"]);
      }
    } on DioError catch (e) {
      print(e.response!.data);
      return Future.error(e.message);
    }
  }
}
