import 'package:community/config/server.dart';
import 'package:community/model/notification_model.dart';
import 'package:get/get.dart';

import '../config/provider/notification_provider/notification_provider.dart';

class NotificationController extends GetxController
    with StateMixin<List<NotificationModel>> {
  // List<Image> img = List<Image>.empty().obs;

  String notId = "";

  // late Rx<AllProductModel> name;
  // late Rx<AllProductModel> description;
  // late Rx<AllProductModel> price;
  // late Rx<AllProductModel> url;
  // late Rx<AllProductModel> ratings;

  notificationApi() {
    Client cclient = Client();
    NotificicationProvider notificationProvider =
        NotificicationProvider(client: cclient.init());
    try {
      notificationProvider.getNotificicationProvider(Id: notId).then((value) {
        change(value, status: RxStatus.success());
      }, onError: (err) {
        change(null, status: RxStatus.error(err.toString()));
      });
    } catch (e) {
      change(null, status: RxStatus.error(e.toString()));
    }
  }

  @override
  void onInit() {
    notificationApi();
    super.onInit();
  }
}
