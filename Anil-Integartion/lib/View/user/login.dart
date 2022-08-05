import 'package:community/View/constant/constant.dart';
import 'package:community/View/constant/login_background.dart';
import 'package:community/View/user/Signup/otp2_screen.dart';
import 'package:community/View/user/Signup/reset_password.dart';
import 'package:community/View/user/otp_screen.dart';
import 'package:community/View/widgets/bottom_nav.dart';
import 'package:community/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  LoginController _controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: LoginBackground(
        child: Form(
          key: _controller.loginkey,
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
                      controller: _controller.phone,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                  1.h.heightBox,
                  Text(
                    "Password",
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
                      controller: _controller.password,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                  0.5.h.heightBox,
                  InkWell(
                    onTap: () {
                      Get.to(() => ResetPasswordMobile());
                    },
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "Forgot password  ?",
                        style: TextStyle(color: Color(0xff0B6BA1)),
                      ),
                    ),
                  ),
                  1.h.heightBox,
                  InkWell(
                    onTap: () {
                      // Get.to(
                      //   () => Bottom(),
                      //   transition: Transition.fadeIn,
                      //   duration: const Duration(milliseconds: 1500),

                      // );
                      _controller.callSignApi();
                    },
                    child: Container(
                        height: 4.5.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            color: Color(0xff1A1242),
                            borderRadius: BorderRadius.circular(10.sp)),
                        child: Center(
                          child: Text(
                            "Login",
                            style: text2,
                          ),
                        )),
                  ),
                  2.h.heightBox,
                  Center(
                      child: Text(
                    "Don’t have account on Community",
                    style: text4,
                  )),
                  2.h.heightBox,
                  Container(
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
