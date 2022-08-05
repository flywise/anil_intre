import 'dart:convert';
import 'dart:developer';

import 'package:community/model/faq_model/faq_details_model.dart';
import 'package:community/model/notification_details_model.dart';
import 'package:dio/dio.dart';

class FaqDetailsProvider {
  Dio client;
  FaqDetailsProvider({required this.client});

  Future<FaqDetailsModel> notificationDetail({required String id}) async {
    try {
      Response r = await client.get("/api/users/faqs/$id");
      if (r.statusCode == 200) {
        return faqDetailsModelFromJson(jsonEncode(r.data["requiredFaq"]));
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
