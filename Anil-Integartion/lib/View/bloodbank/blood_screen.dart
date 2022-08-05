import 'package:community/View/bloodbank/blood_group.dart';
import 'package:community/View/bloodbank/donar_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class BloodScreen extends StatefulWidget {
  BloodScreen({Key? key}) : super(key: key);

  @override
  State<BloodScreen> createState() => _BloodScreenState();
}

class _BloodScreenState extends State<BloodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff9D73D3).withOpacity(0.3),
      appBar: AppBar(
        backgroundColor: Color(0xff741CE5),
        title: Text("Blood bank"),
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: Column(
        children: [
          2.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: 20.h,
                  width: 43.w,
                  child: Image.asset(
                    "lib/assets/images/b1.png",
                    fit: BoxFit.fill,
                  )).onTap(() {
                Get.to(() => BloodGroup());
              }),
              Container(
                  height: 20.h,
                  width: 43.w,
                  child: Image.asset(
                    "lib/assets/images/b2.png",
                    fit: BoxFit.fill,
                  )).onTap(() {
                Get.to(() => DonarScreen());
              }),
            ],
          )
        ],
      ).pSymmetric(h: 2.h),
    );
  }
}
