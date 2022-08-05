import 'package:community/View/constant/constant.dart';
import 'package:community/View/constant/otp_background.dart';
import 'package:community/View/user/create_password.dart';
import 'package:community/controller/create_account_controller.dart';
import 'package:community/controller/create_password_controller.dart';
import 'package:community/controller/veryfy_user_otp_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/otp_input.dart';
import 'Signup/signup_confirm.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({Key? key}) : super(key: key);

  OtpTimerController _otpTimerController = Get.put(OtpTimerController());

  CreateAccountController createAccountController = Get.find();

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
            42.h.heightBox,
            Center(
              child: Text(
                "Enter OTP",
                style: text5,
              ),
            ),
            Form(
              key: _otpTimerController.otpKey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      for (int i = 0; i < 4; i++)
                        OtpInput(
                            controller: _otpTimerController.otp[i],
                            autoFocus: i == 0 ? true : false),
                    ],
                  )
                ],
              ),
            ),
            2.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn’t recive OTP !",
                  style: text4,
                ),
                Text(
                  " Resend",
                  style: TextStyle(
                      color: Color(
                        0xff464CE0,
                      ),
                      fontSize: 14.sp),
                )
              ],
            ),
            5.h.heightBox,
            InkWell(
              onTap: () {
                // Get.to(() => SignUpConfirm());
                _otpTimerController.otpdigits();
                _otpTimerController.verifySignup(
                    createAccountController.phone.text,
                    _otpTimerController.result);
              },
              child: Center(
                child: Container(
                    height: 5.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                        color: Color(0xff5029EB),
                        borderRadius: BorderRadius.circular(10.sp)),
                    child: Center(
                      child: Text(
                        "Next ",
                        style: text2,
                      ),
                    )),
              ),
            ),
          ],
        ).pSymmetric(h: 2.h, v: 2.h)),
      ),
    );
  }
}
