import 'dart:developer';

import 'package:community/View/home/home_screen.dart';
import 'package:community/utils/common_loder.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import 'package:get/get.dart' as g;

class CreateNewPasswordProvider {
  Dio client;
  CreateNewPasswordProvider({required this.client});

  createNewPasswordProviderApi(
      {required String npassword,
      required String newPassword,
      required String phone}) async {
    CommonLoader.showLoading(); 

    var data = {
      "createPassword": npassword,
      
      "confirmPassword": newPassword,
      "mobile": phone,
    };

    try {
      Response r = await client.post('/api/users/resetPassword', data: data);
      CommonLoader.hideLoading();
      if (r.statusCode == 200) {
        
        print(r.data);
        g.Get.to(() => HomeScreen());
      } else {
        log("else error $r");
        // CommanLoader.hideLoader();
        CommonLoader.message("wrong credentials");
      }
    } on DioError catch (e) {
      print(e.toString());
      CommonLoader.hideLoading();
      CommonLoader.message(e.response!.data['msg']);
    }
  }
}
