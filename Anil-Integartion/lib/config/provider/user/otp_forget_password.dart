import 'dart:developer';

import 'package:community/View/user/create_password.dart';
import 'package:community/utils/common_loder.dart';
import 'package:dio/dio.dart';

import 'package:get/get.dart' as g;

class OtpForgetPasswordProvider {
  Dio client;
  OtpForgetPasswordProvider({required this.client});

  OtpForgetPasswordApi(String phone, String otp) async {
    try {
      CommonLoader.showLoading();
      var data = {"otp": otp, "mobile": phone};
      Response r =
          await client.post("/api/users/forgotPasswordVerifyOtp", data: data);

      CommonLoader.hideLoading();
      if (r.statusCode == 200) {
        print(r.data);
        print('Otp sucessfully');
        g.Get.to(() => CreatePassword(),);
      } else {
        CommonLoader.showErrorDialog(description: r.data['error']);
      }
    } on DioError catch (e) {
      // CommanLoader.hideLoading();
      // CommonLoader.message(e.response!.data['msg']);
      log(e.response!.data.toString());
      CommonLoader.hideLoading();
    }
  }
}
