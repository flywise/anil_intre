import 'package:community/View/constant/constant.dart';
import 'package:community/View/notification/notification_details.dart';
import 'package:community/controller/notification_controller.dart';
import 'package:community/model/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class NotificationScreen extends GetView<NotificationModel> {
  NotificationScreen({Key? key}) : super(key: key);

  NotificationController notificationController =
      Get.put(NotificationController());

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
          title: Text("Notifications"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            notificationController.obx((state) => Expanded(
                child: ListView.builder(
                    itemCount: state!.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: InkWell(
                          onTap: () => Get.to(() => NotificationDetails(),
                              arguments: state[index].id),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "lib/assets/images/metpic.png",
                                height: 5.h,
                                width: 10.w,
                                fit: BoxFit.fill,
                              ),
                              2.w.widthBox,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        state[index].title,
                                        style: text6,
                                      ),
                                      3.w.widthBox,
                                      Text("Read more...",
                                          style: TextStyle(
                                              color: Color(0xff2C749D))),
                                    ],
                                  ),
                                  0.6.h.heightBox,
                                  Text(
                                    state[index].description,
                                    style: text4,
                                  ),
                                  Text(readTimestamp(state[index].createdAt)),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    })))
          ],
        ).pSymmetric(h: 1.h, v: 1.h));
  }

  // TimeConvert(DateTime dateTime) {
  //   // var data = notificationController.requiredNotification;

  //   DateTime dateTime = getFormattedDateFromFormattedString(
  //       value: data,
  //       currentFormat: "yyyy-MM-ddTHH:mm:ssZ",
  //       desiredFormat: "yyyy-MM-dd HH:mm:ss");

  //   print(dateTime); //2021-12-15 11:10:01.000
  // }

  getFormattedDateFromFormattedString(
      {required value,
      required String currentFormat,
      required String desiredFormat,
      isUtc = false}) {
    DateTime? dateTime = DateTime.now();
    if (value != null || value.isNotEmpty) {
      try {
        dateTime = DateFormat(currentFormat).parse(value, isUtc).toLocal();
      } catch (e) {
        print("$e");
      }
    }
    return dateTime;
  }

  ///get time stamp
  String readTimestamp(DateTime dateTime) {
    DateTime dt = DateTime.parse(dateTime.toString());

    var now = DateTime.now();
    var format = DateFormat('HH:mm a');
    var date =
        DateTime.fromMillisecondsSinceEpoch(dateTime.millisecondsSinceEpoch);
    var diff = now.difference(date);
    var time = '';

    if (diff.inSeconds <= 0 ||
        diff.inSeconds > 0 && diff.inMinutes == 0 ||
        diff.inMinutes > 0 && diff.inHours == 0 ||
        diff.inHours > 0 && diff.inDays == 0) {
      time = format.format(date);
    } else if (diff.inDays > 0 && diff.inDays < 7) {
      if (diff.inDays == 1) {
        time = diff.inDays.toString() + ' day ago';
      } else {
        time = diff.inDays.toString() + ' day ago';
      }
    } else {
      if (diff.inDays == 7) {
        time = (diff.inDays / 7).floor().toString() + ' weeks ago';
      } else {
        time = (diff.inDays / 7).floor().toString() + ' weeks ago';
      }
    }

    return time;
  }

  /// date formatter
  static String dateFormatter(DateTime dateTime) {
    DateFormat formatter = DateFormat('MM/dd/yyy');
    final String formatted = formatter.format(dateTime);
    return formatted;
  }
}
