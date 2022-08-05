import 'package:community/View/constant/constant.dart';
import 'package:community/View/home/home_screen.dart';
import 'package:community/View/user/login.dart';
import 'package:community/View/user/login_singup.dart';
import 'package:community/View/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  autuLogin() async {
    GetStorage box = GetStorage();
    var token = await box.read("token");
    //  var status = box.getBool("isLoggedIn") ?? false;
    print(token);
    if (token != null) {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => MyDashBoard()),
      Get.offAll(() => Bottom(), duration: Duration(seconds: 5));
    } else {
      Get.to(() => Login());
    }
  }

  @override
  void initState() {
    autuLogin();

    // super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: InkWell(
        onTap: () {
          Get.to(
            LoginSignUp(),
          );
        },
        child: Center(
          child: Text(
            "Community",
            style: text1,
          ),
        ),
      ),
    );
  }
}
