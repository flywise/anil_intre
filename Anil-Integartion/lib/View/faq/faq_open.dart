import 'package:community/View/constant/constant.dart';
import 'package:community/controller/Faq_controller/faq_controller.dart';
import 'package:community/controller/Faq_controller/faq_details_controller.dart';
import 'package:community/model/faq_model/faq_details_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class FaqOpen extends GetView<FaqDetailsController> {
  FaqOpen({Key? key}) : super(key: key);
  FaqController faqController = Get.find();
  FaqDetailsController faqDetailsController = Get.put(FaqDetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff741CE5),
        title: Text("FAQ"),
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
          Text(
            "How to use this app",
            style: text7,
          ),
          1.h.heightBox,
          faqDetailsController.obx((state) => Text(state!.answer.toString()))
        ],
      ).pSymmetric(h: 2.h),
    );
  }
}
