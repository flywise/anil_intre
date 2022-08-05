import 'dart:convert';

import 'package:community/model/faq_model/faq_model.dart';

import 'package:dio/dio.dart';

class FaqProvider {
  Dio client;

  FaqProvider({
    required this.client,
  });

  Future<List<FaqModel>> getFaqProvider({required String Id}) async {
    try {
      Response r = await client.get("/api/users/faqs$Id");

      if (r.statusCode == 200) {
        print(r.data);
        return faqModelFromJson(jsonEncode(r.data["faqs"]));
      } else {
        return Future.error(r.data["message"]);
      }
    } on DioError catch (e) {
      print(e.response!.data);
      return Future.error(e.message);
    }
  }
}
