import 'package:community/View/user/Signup/otp_time_controller.dart';
import 'package:community/View/user/Signup/signup_confirm.dart';
import 'package:community/View/user/create_password.dart';

import 'package:community/controller/forget_pass_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../constant/constant.dart';
import '../../constant/otp_background.dart';
import '../../widgets/otp_input.dart';

class Otp2 extends StatelessWidget {
  Otp2({Key? key}) : super(key: key);
  OtpForgetController _timeController = Get.put(OtpForgetController());

  ForgetPasswordController _forgetPasswordController = Get.find();

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
              key: _timeController.otpforgetKey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      for (int i = 0; i < 4; i++)
                        OtpInput(
                            controller: _timeController.otp[i],
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
                // Get.to(CreatePassword());
                // _otpForgetController.verifyOtpCall();
                _timeController.otpdigits();
                _timeController.verifyOtpCall(
                    _forgetPasswordController.forgetphone.text,
                    _timeController.result);
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
                        "Submit",
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
