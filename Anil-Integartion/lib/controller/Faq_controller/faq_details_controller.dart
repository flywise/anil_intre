import 'dart:developer';

import 'package:community/config/provider/faq_provider/faq_details_provider.dart';

import 'package:community/config/server.dart';
import 'package:community/model/faq_model/faq_details_model.dart';

import 'package:get/get.dart';

class FaqDetailsController extends GetxController
    with StateMixin<FaqDetailsModel> {
  String notId = Get.arguments;

  @override
  void onInit() {
    log("args ${Get.arguments}");
    noticeDetailscall();
    super.onInit();
  }

  noticeDetailscall() {
    try {
      Client _client = Client();
      FaqDetailsProvider prodRepo = FaqDetailsProvider(client: _client.init());
      prodRepo.notificationDetail(id: notId).then((value) {
        change(value, status: RxStatus.success());
      }, onError: (err) {
        change(null, status: RxStatus.error(err.toString()));
      });
    } on Exception catch (e) {
      change(null, status: RxStatus.error(e.toString()));
    }
  }
}
