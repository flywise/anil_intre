import 'package:community/config/server.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';

import '../config/provider/user/create_account_provider.dart';

class CreateAccountController extends GetxController {
  GlobalKey<FormState> signUpkey = GlobalKey();
  TextEditingController confirmpass = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void onInit() {
    confirmpass;
    phone;
    password;
    super.onInit();
  }

  @override
  void dispose() {
    confirmpass.dispose();
    password.dispose();
    phone.dispose();
    super.dispose();
  }

  String? namevalidate(value) {
    if (value == '') {
      return 'enter your User Name';
    }
    return null;
  }

  String? phonevalidate(value) {
    if (value == '') {
      return 'enter your Phone Number';
    }
    return null;
  }

  String? passwordvalidation(value) {
    if (value == '') {
      return 'enter your password';
    }
    return null;
  }

  checklogin() {
    final isvalidate = signUpkey.currentState!.validate();
    if (!isvalidate) {
      return;
    } else {
      callLoginApi();
    }
    signUpkey.currentState!.save();
  }

  callLoginApi() {
    Client _client = Client();
    RegisterEndPoint _register = RegisterEndPoint(client: _client.init());
    _register.registerApi(
        confrmpassword: confirmpass.text,
        password: password.text,
        phone: phone.text);
  }
}
