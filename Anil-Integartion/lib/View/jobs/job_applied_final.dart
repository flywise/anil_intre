import 'dart:async';

import 'package:community/View/constant/constant.dart';
import 'package:community/View/jobs/jobs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class JobAppliedFinal extends StatefulWidget {
  JobAppliedFinal({Key? key}) : super(key: key);

  @override
  State<JobAppliedFinal> createState() => _JobAppliedFinalState();
}

class _JobAppliedFinalState extends State<JobAppliedFinal> {
  bool isvisible = true;
  bool isvisibletick = false;
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
        children: [
          1.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "UI/UX   Designer",
                style: text6,
              ),
              Text(
                "5-10 LPA",
                style: TextStyle(fontSize: 15.sp, color: Color(0xff9747FF)),
              ),
            ],
          ),
          1.h.heightBox,
          Row(
            children: [
              4.h.heightBox,
              Center(
                  child: Container(
                      height: 6.h,
                      width: 12.w,
                      child: Image.asset(
                        "lib/assets/images/propic2.png",
                        fit: BoxFit.fill,
                      ))),
              5.w.widthBox,
              Text(
                "Flyweis Group",
                style: text7,
              )
            ],
          ),
          1.h.heightBox,
          Row(
            children: [
              4.h.heightBox,
              Center(
                  child: Container(
                      height: 6.h,
                      width: 12.w,
                      child: Icon(
                        Icons.location_on_outlined,
                        color: Color(0xff2E75DF),
                        size: 25.sp,
                      ))),
              5.w.widthBox,
              Text(
                "Mayur Vihar , New Delhi",
                style: text7,
              )
            ],
          ),
          Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit sollicitudin at sollicitudin fringilla. Suspendisse commodo sit maecenas integer orci ullamcorper eget malesuada. Sit nisl neque id id in. Tellus ultricies cursus velit lacus, lorem vulputate. Sem euismod ullamcorper ultrices pretium leo eu mattis amet"),
          8.h.heightBox,
          Visibility(
            visible: isvisible,
            child: Container(
              height: 6.h,
              width: 44.w,
              decoration: BoxDecoration(
                color: Color(0xff9747FF),
              ),
              child: Center(
                child: Text(
                  "Apply",
                  style: text2,
                ),
              ),
            ).onTap(() {
              setState(() {
                isvisible = !isvisible;
                isvisibletick = !isvisibletick;
                Timer(
                    Duration(seconds: 2),
                    () => Get.off(
                          Jobs(),
                          transition: Transition.circularReveal,
                          duration: const Duration(milliseconds: 2000),
                        ));
              });
            }),
          ),
          Visibility(
            visible: isvisibletick,
            child: Lottie.asset("lib/assets/images/tick.json",
                height: 40.h, width: 80.w, fit: BoxFit.fill),
          )
        ],
      ).pSymmetric(h: 2.h),
    );
  }
}
