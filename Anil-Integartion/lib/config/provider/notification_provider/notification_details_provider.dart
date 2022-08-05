import 'dart:convert';
import 'dart:developer';

import 'package:community/model/notification_details_model.dart';
import 'package:dio/dio.dart';

class NotificatioDetailsProvider {
  Dio client;
  NotificatioDetailsProvider({required this.client});

  Future<NotificationDetailsModel> notificationDetail(
      {required String id}) async {
    try {
      Response r = await client.get("/api/users/notifications/$id");
      if (r.statusCode == 200) {
        return notificationDetailsModelFromJson(jsonEncode(r.data));
      } else {
        log("error $r");
        return Future.error(r.data["error"]);
      }
    } on DioError catch (e) {
      log("dio err $e");
      return Future.error(e.message);
    }
  }
}
