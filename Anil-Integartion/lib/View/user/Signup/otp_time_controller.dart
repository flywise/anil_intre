import 'dart:async';
import 'package:community/config/provider/user/otp_forget_password.dart';
import 'package:community/config/server.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpForgetController extends GetxController {
  RxString elapsedTime = '02:00'.obs;
  int _start = 120;
  String result = '';
  GlobalKey<FormState> otpforgetKey = GlobalKey<FormState>();
  List<TextEditingController> otp = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];
  late Timer _timer;
  String formatTime(int secs) {
    var minutes = ((secs % 3600) ~/ 60).toString().padLeft(2, '0');
    var seconds = (secs % 60).toString().padLeft(2, '0');
    return "$minutes:$seconds";
  }

  String? otpValidator(value) {
    if (value.length == 0) {
      return 'Plese enter otp';
    } else {
      return null;
    }
  }

  @override
  void onInit() {
    startTimer();

    super.onInit();
  }

  void otpdigits() {
    result = '';
    for (int i = 0; i < 4; i++) result += otp[i].text;

    print(result);
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_start < 1) {
        timer.cancel();
        elapsedTime.value = '00:00';
      } else {
        _start = _start - 1;
        elapsedTime.value = formatTime(_start);
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  void onClose() {
    _timer.cancel();
    super.onClose();
  }

  verifyOtpCall(
    String phone,
    String otp,
  ) {
    Client _client = Client();
    OtpForgetPasswordProvider _otpforgetPasswordProvider =
        OtpForgetPasswordProvider(client: _client.init());
    _otpforgetPasswordProvider.OtpForgetPasswordApi(phone, otp);
  }
}
