import 'package:community/View/user/Signup/otp2_screen.dart';
import 'package:community/utils/common_loder.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart' as g;

class ForgetPasswordProvider {
  Dio client;
  ForgetPasswordProvider({required this.client});

  ForgetPasswordProviderApi({required String phone}) async {
    CommonLoader.showLoading();
    var data = {
      "mobile": phone,
    };

    try {
      Response r =
          await client.post('/api/users/forgotPasswordSendOtp', data: data);
      CommonLoader.hideLoading();

      if (r.statusCode == 200) {
        print(r.data);
        g.Get.to(() => Otp2());
        g.Get.snackbar(
            "Forget Password", "Otp Send Your Registered Mobile Number",
            colorText: Colors.green);
      } else {
        CommonLoader.message("wrong credentials");
      }
    } on DioError catch (e) {
      print(e.toString());
      CommonLoader.hideLoading();
      CommonLoader.message(e.response!.data['msg']);
    }
  }
}
