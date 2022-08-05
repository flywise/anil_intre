import 'package:community/config/provider/faq_provider/faq_provider.dart';
import 'package:community/config/server.dart';
import 'package:community/model/faq_model/faq_model.dart';
import 'package:community/model/notification_model.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:get/get.dart';

class FaqController extends GetxController with StateMixin<List<FaqModel>> {
  // List<Image> img = List<Image>.empty().obs;

  String notId = "";

  // late Rx<AllProductModel> name;
  // late Rx<AllProductModel> description;
  // late Rx<AllProductModel> price;
  // late Rx<AllProductModel> url;
  // late Rx<AllProductModel> ratings;

  notificationApi() {
    Client cclient = Client();
    FaqProvider notificationProvider = FaqProvider(client: cclient.init());
    try {
      notificationProvider.getFaqProvider(Id: notId).then((value) {
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

  static obx(Set<Column> Function(dynamic state) param0) {}
}
