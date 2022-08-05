import 'package:community/View/constant/constant.dart';
import 'package:community/View/constant/login_background.dart';
import 'package:community/View/user/Signup/otp2_screen.dart';
import 'package:community/View/user/otp_screen.dart';
import 'package:community/View/widgets/bottom_nav.dart';
import 'package:community/controller/forget_pass_controller.dart';
import 'package:community/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ResetPasswordMobile extends StatelessWidget {
  ResetPasswordMobile({Key? key}) : super(key: key);

 ForgetPasswordController  _forgetPasswordController = Get.put(ForgetPasswordController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: LoginBackground(
        child: Form(
          key:_forgetPasswordController.fpasswordkey,
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
              37.h.heightBox,
              Column(
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
                      controller: _forgetPasswordController.forgetphone,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                  7.h.heightBox,
                  InkWell(
                    onTap: () {
                      // Get.to(
                      //   () => Bottom(),
                      //   transition: Transition.fadeIn,
                      //   duration: const Duration(milliseconds: 1500),

                      // );
                      _forgetPasswordController.checkforgetPassword();
                    },
                    child: Container(
                        height: 4.5.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            color: Color(0xff1A1242),
                            borderRadius: BorderRadius.circular(10.sp)),
                        child: Center(
                          child: Text(
                            "Reset Password",
                            style: text2,
                          ),
                        )),
                  ),
                  2.h.heightBox,
                ],
              ).pSymmetric(
                h: 3.h,
              ),
            ],
          ).pSymmetric(h: 2.h, v: 2.h),
        ),
      ),
    ));
  }
}
