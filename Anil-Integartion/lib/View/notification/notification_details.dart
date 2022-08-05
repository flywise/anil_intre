import 'package:community/controller/notification_controller.dart';
import 'package:community/controller/notification_details_controller.dart';
import 'package:community/model/notification_details_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../constant/constant.dart';

class NotificationDetails extends GetView<NotificationDetailsController> {
  NotificationDetails({Key? key}) : super(key: key);

  NotificationController notificationController = Get.find();

  // NotificationDetailsController notificationDetailsController = Get.find();
  NotificationDetailsController notificationDetailsController =
      Get.put(NotificationDetailsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff741CE5),
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          1.h.heightBox,
          Row(
            children: [
              Text(
                "Amit",
                style: text6,
              ),
              2.w.widthBox,
              Text("2 hr ago")
            ],
          ),
          1.h.heightBox,
          notificationDetailsController
              .obx((state) => Text(state!.requiredNotification.description)),
        ],
      ).pSymmetric(h: 2.h),
    );
  }
}
