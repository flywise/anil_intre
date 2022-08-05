import 'package:community/config/provider/user/create_new_password_provider.dart';

import 'package:community/config/server.dart';
import 'package:community/controller/forget_pass_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CreateNewPasswordController extends GetxController {
  // String mobile = Get.arguments;

  GlobalKey<FormState> newpasskey = GlobalKey();
  TextEditingController passnew = TextEditingController();
  TextEditingController passconfirm = TextEditingController();

// verifyOtpCall(
//     String phone,
//     String otp,
//   ) {
//     Client _client = Client();
//     OtpForgetPasswordProvider _otpforgetPasswordProvider =
//         OtpForgetPasswordProvider(client: _client.init());
//     _otpforgetPasswordProvider.OtpForgetPasswordApi(phone, otp);
//   }
  callResetApi() {
    Client _client = Client();
    CreateNewPasswordProvider _createNewPasswordProvider =
        CreateNewPasswordProvider(client: _client.init());
    ForgetPasswordController controller = Get.find();

    _createNewPasswordProvider.createNewPasswordProviderApi(
      phone: controller.forgetphone.text,
      npassword: passnew.text,
      newPassword: passconfirm.text,
    );
  }
}
