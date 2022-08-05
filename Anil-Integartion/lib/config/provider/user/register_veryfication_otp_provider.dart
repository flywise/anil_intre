import 'dart:developer';

import 'package:community/View/user/Signup/signup_confirm.dart';
import 'package:community/View/user/login.dart';
import 'package:community/utils/common_loder.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart' as g;

class RegisterVerificationEndPoint {
  Dio client;
  RegisterVerificationEndPoint({required this.client});

  registerVerifyOtp(String phone, String otp) async {
    try {
      CommonLoader.showLoading();
      var data = {
        "mobile": phone,
        "otp": otp,
      };
      Response r = await client.post("/api/users/verifyOtp", data: data);

      CommonLoader.hideLoading();
      if (r.statusCode == 200) {
        print(r.data);
        print('Otp sucessfully');
        g.Get.to(() => SignUpConfirm());
        g.Get.snackbar("Welcome", "Account Created Succesfully",
            icon: Icon(
              Icons.phone,
              color: Colors.green,
            ));
      } else {
        CommonLoader.showErrorDialog(description: r.data['error']);
      }
    } on DioError catch (e) {
      // CommanLoader.hideLoading();
      // CommanLoader.message(e.response!.data['msg']);
      log(e.response!.data.toString());
      CommonLoader.hideLoading();
    }
  }
}
