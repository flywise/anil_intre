import 'package:community/View/constant/otp_background.dart';
import 'package:community/View/user/Signup/otp2_screen.dart';
import 'package:community/View/user/otp_screen.dart';
import 'package:community/controller/create_account_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../constant/constant.dart';

class CreateAccount extends StatelessWidget {
  CreateAccount({Key? key}) : super(key: key);

  CreateAccountController createAccountController =
      Get.put(CreateAccountController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: OtpBackground(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            2.h.heightBox,
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
            40.h.heightBox,
            Form(
              key: createAccountController.signUpkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mobile Number",
                    style: text6,
                  ),
                  1.h.heightBox,
                  Container(
                    height: 4.5.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(5.sp)),
                    child: TextFormField(
                      controller: createAccountController.phone,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                  1.h.heightBox,
                  1.h.heightBox,
                  Text(
                    "Create Password",
                    style: text6,
                  ),
                  1.h.heightBox,
                  Container(
                    height: 4.5.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(5.sp)),
                    child: TextFormField(
                      controller: createAccountController.password,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.visibility_off),
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                  1.h.heightBox,
                  1.h.heightBox,
                  Text(
                    "Confirm Password",
                    style: text6,
                  ),
                  1.h.heightBox,
                  Container(
                    height: 4.5.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(5.sp)),
                    child: TextFormField(
                      controller: createAccountController.confirmpass,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.visibility_off),
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                  2.h.heightBox,
                  InkWell(
                    onTap: () {
                      // Get.to(OtpScreen());
                      createAccountController.checklogin();
                    },
                    child: Container(
                        height: 5.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            color: Color(0xff5029EB),
                            borderRadius: BorderRadius.circular(10.sp)),
                        child: Center(
                          child: Text(
                            "Create an Account",
                            style: text2,
                          ),
                        )),
                  ),
                ],
              ).pSymmetric(h: 3.h),
            )
          ],
        ).pSymmetric(h: 2.h, v: 2.h)),
      ),
    );
  }
}
