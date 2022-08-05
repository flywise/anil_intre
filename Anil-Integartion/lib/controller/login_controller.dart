import 'package:community/config/provider/user/login_provider.dart';
import 'package:community/config/server.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  // GlobalKey<FormState> signinkey = GlobalKey();
  // TextEditingController phone = TextEditingController();
  // TextEditingController password = TextEditingController();

  GlobalKey<FormState> loginkey = GlobalKey();

  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();

  String? phonevalidate(value) {
    if (value == '') {
      return 'enter your Mobile/Email';
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
    final isvalidate = loginkey.currentState!.validate();
    if (!isvalidate) {
      return;
    } else {
      callSignApi();
    }
    loginkey.currentState!.save();
  }

  callSignApi() {
    Client _client = Client();
    LoginProvider _LoginProvider = LoginProvider(client: _client.init());
    _LoginProvider.LoginApi(phone: phone.text, pass: password.text);
  }
}
