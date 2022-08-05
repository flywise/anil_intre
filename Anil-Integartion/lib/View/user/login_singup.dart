import 'package:community/View/constant/background_image.dart';
import 'package:community/View/constant/constant.dart';
import 'package:community/View/home/home_screen.dart';
import 'package:community/View/user/Signup/signup.dart';
import 'package:community/View/user/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginSignUp extends StatelessWidget {
  const LoginSignUp({Key? key}) : super(key: key);

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: BackAssets(
                child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Community",
          style: text1,
        ),
        1.h.heightBox,
        Container(
          height: 15.h,
          width: 70.w,
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elit, neque, vitae, porttitor tempor et elementum consectetur nisi fames. Praesent aliquam, ultrices massa venenatis, at posuere dictum nullam duis. Pulvinar vestibulum a enim donec arcu est, non, semper.",
            style: normal,
          ),
        ),
        25.h.heightBox,
        Center(
          child: Text(
            "Select Language",
            style: text2,
          ),
        ),
        2.h.heightBox,
        Center(
          child: Container(
            height: 4.5.h,
            width: 32.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.sp), color: Colors.white),
            child: Row(children: [
              Text("English"),
              1.h.widthBox,
              Icon(Icons.keyboard_arrow_down)
            ]).pSymmetric(h: 15.sp),
          ),
        ),
        15.h.heightBox,
        InkWell(
          onTap: () {
            Get.to(
              Login(),
              transition: Transition.fadeIn,
              duration: const Duration(milliseconds: 2000),
            );
          },
          child: Container(
            height: 7.h,
            width: 100.w,
            decoration: BoxDecoration(border: Border.all(color: Colors.white)),
            child: Center(
                child: Text(
              "Log in",
              style: text3,
            )),
          ),
        ),
        3.h.heightBox,
        InkWell(
          onTap: () {
            Get.to(() => SignUp());

            // Navigator.popAndPushNamed(context, )
          },
          child: Container(
            height: 7.h,
            width: 100.w,
            decoration: BoxDecoration(color: Color(0xff0F70A7)),
            child: Center(
                child: Text(
              "Sign up",
              style: text3,
            )),
          ),
        )
      ],
    ).pSymmetric(h: 2.h, v: 2.h))));
  }
}
