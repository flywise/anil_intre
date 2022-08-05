import 'package:community/View/constant/constant.dart';
import 'package:community/View/matrimonial/matrimonial_post_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../matrimonial/matrimonial _post.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                  height: 20.h,
                  width: 100.w,
                  child: Image.asset(
                    "lib/assets/images/profilegr.png",
                    fit: BoxFit.fill,
                  )),
              Positioned(
                  top: 12.h,
                  child: Container(
                      height: 15.h,
                      width: 60.w,
                      child: Image.asset("lib/assets/images/ppic.png")))
            ],
          ),
          7.h.heightBox,
          Text(
            "Robert Downey",
            style: text6,
          ).text.make().centered(),
          0.5.heightBox,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("29 Hollywood, USA").text.make().centered(),
              Text(
                "Contact",
                style: text6,
              ),
              2.h.heightBox,
              Row(
                children: [
                  Icon(
                    Icons.phone_outlined,
                    size: 25.sp,
                    color: Color.fromARGB(255, 218, 89, 132),
                  ),
                  10.w.widthBox,
                  Text(
                    "90XXX87521",
                    style: text7,
                  )
                ],
              ),
              4.h.heightBox,
              Text(
                "Qualification",
                style: text6,
              ),
              1.h.heightBox,
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Parturient volutpat curabitur quam vulputate vitae proin. Phasellus feugiat potenti malesuada eget vitae. Semper lectus auctor integer aliquam sit semper bibendum sed duis."),
              5.h.heightBox,
              Center(
                child: Container(
                  height: 5.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    color: Color(0xff1A1242),
                  ),
                  child: Center(
                    child: Text(
                      "Edit Profile",
                      style: text2,
                    ),
                  ),
                ).onTap(() {
                  Get.to(() => MatrimonialPost());
                }),
              ),
            ],
          ).pSymmetric(h: 2.h)
        ],
      ),
    );
  }
}
