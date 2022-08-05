import 'package:community/View/constant/constant.dart';
import 'package:community/View/faq/faq_open.dart';
import 'package:community/controller/Faq_controller/faq_controller.dart';
import 'package:community/model/faq_model/faq_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class FaqScreen extends GetView<FaqModel> {
  FaqScreen({Key? key}) : super(key: key);

  FaqController faqController = Get.put(FaqController());
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
          faqController.obx((state) => ListView.builder(
              itemCount: state!.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Get.to(() => FaqOpen(), arguments: state[index].id);
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 1.h),
                    height: 5.h,
                    width: 100.w,
                    color: Color(0xffD9D9D9),
                    child: ListTile(
                      visualDensity:
                          VisualDensity(horizontal: -1, vertical: -4),
                      leading: Text(
                        state[index].question.toString(),
                        style: text6,
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                    ),
                  ),
                );
              }))
        ],
      ),
    );
  }
}
