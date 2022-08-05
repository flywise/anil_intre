import 'dart:developer';

import 'package:community/View/home/home_screen.dart';
import 'package:community/View/widgets/bottom_nav.dart';
import 'package:community/utils/common_loder.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart' as g;
import 'package:get_storage/get_storage.dart';

class LoginProvider {
  Dio client;
  LoginProvider({required this.client});

  LoginApi({required String phone, required String pass}) async {
    CommonLoader.showLoading();
    var data = {"mobile": phone, "password": pass};

    try {
      Response r = await client.post('/api/users/login', data: data);
      CommonLoader.hideLoading();

      print(phone);
      print(pass);
      // print(r.statusCode);
      // print(r.data);

      if (r.statusCode == 200) {
        print(r.data);
        g.Get.to(() => Bottom());
        g.Get.snackbar("Welcome", "Continue Shoping",
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.green,
            ));
        _saveToken(r.data["token"]);
        // log(r.data['token']);
        // Client.token = r.data["data"]["token"];
        // GetStorage box = GetStorage();
        // await box.write("token", Client.token);
      } else {
        // CommanLoader.hideLoader();
        CommonLoader.message("wrong credentials");
      }
    } on DioError catch (e) {
      print(e.toString());
      CommonLoader.hideLoading();
      CommonLoader.message(e.response!.data['msg']);
    }
  }

  _saveToken(String token) {
    GetStorage box = GetStorage();
    box.write("token", token);
  }
}
