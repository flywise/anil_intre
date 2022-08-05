import 'dart:developer';

import 'package:community/config/provider/notification_provider/notification_details_provider.dart';
import 'package:community/config/server.dart';
import 'package:community/model/notification_details_model.dart';
import 'package:get/get.dart';

class NotificationDetailsController extends GetxController
    with StateMixin<NotificationDetailsModel> {
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
      NotificatioDetailsProvider prodRepo =
          NotificatioDetailsProvider(client: _client.init());
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
