import 'dart:developer';

import 'package:community/View/user/otp_screen.dart';
import 'package:community/utils/common_loder.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' as g;


class RegisterEndPoint {
  Dio client;
  RegisterEndPoint({required this.client});

  registerApi(
      {required String confrmpassword,
      required String phone,
      required String password}) async {
   CommonLoader.showLoading();
    var data = {"confirmPassword": confrmpassword, "mobile": phone, "password": password};
    try {
      Response r = await client.post('/api/users/sendOtp', data: data);

     CommonLoader.hideLoading();

      if (r.statusCode == 200) {
        print(r.data);
        g.Get.to(() => OtpScreen());
        g.Get.snackbar("Welcome", "Otp sent to your phone",
            icon: Icon(
              Icons.phone,
              color: Colors.green,
            ));

        print("created Account");
      } else {
        CommonLoader.message(r.data['msg']);
      }
    } on DioError catch (err) {
      log(err.response!.data.toString());
     CommonLoader.hideLoading();
    }
  }
}
