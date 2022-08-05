import 'dart:async';

import 'package:community/View/Forums/forums_screen1.dart';
import 'package:community/View/constant/constant.dart';
import 'package:community/View/user/login.dart';
import 'package:community/View/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class SignUpConfirm extends StatefulWidget {
  const SignUpConfirm({Key? key}) : super(key: key);

  @override
  State<SignUpConfirm> createState() => _SignUpConfirmState();
}

class _SignUpConfirmState extends State<SignUpConfirm> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Bottom())));

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            8.h.heightBox,
            Container(
              height: 35.h,
              width: 80.w,
              child: Lottie.asset(
                "lib/assets/images/waiting.json",
              ),
            ),
            Text(
              "Waiting for approval",
              style: TextStyle(color: Color(0xff46500E), fontSize: 17.sp),
            ),
            2.h.heightBox,
            Text(
              "How it Works",
              style: TextStyle(color: Color(0xff4A1A88), fontSize: 15.sp),
            ),
            2.h.heightBox,
            Center(
              child: Container(
                height: 25.h,
                width: 80.w,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque amet augue praesent blandit euismod ornare. Vulputate convallis gravida aliquet aliquet lectus lacus risus sapien odio. Aliquam aliquam elementum vitae, amet maecenas porttitor. Non ipsum sed non duis cursus id ullamcorper. Neque tortor quis pellentesque et. Ultricies laoreet neque a accumsan, fames. Egestas id ante auctor nunc tortor vitae nisl, purus. In mauris, aliquet cras tempus odio at.",
                  style: text4,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
