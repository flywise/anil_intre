import 'package:community/View/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class JobApplied extends StatefulWidget {
  JobApplied({Key? key}) : super(key: key);

  @override
  State<JobApplied> createState() => _JobAppliedState();
}

class _JobAppliedState extends State<JobApplied> {
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
          2.h.heightBox,
          Container(
            height: 35.h,
            width: 80.w,
            child: Lottie.asset(
              "lib/assets/images/tick.json",
            ),
          ),
          Text(
            "Job Posted  Successfully",
            style: TextStyle(fontSize: 18.sp, color: Color(0xff2C749D)),
          )
        ],
      ).pSymmetric(h: 2.h),
    );
  }
}
