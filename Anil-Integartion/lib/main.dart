import 'package:community/View/user/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sizer/sizer.dart';

import 'View/bloodbank/blood_group.dart';
import 'View/bloodbank/blood_screen.dart';
import 'View/bloodbank/donar_screen.dart';
import 'View/family/addfamily/addfamily_details.dart';
import 'View/family/addfamily/id_card.dart';
import 'View/jobs/job_post.dart';
import 'View/matrimonial/matrimonial_screen.dart';
import 'View/user/Signup/signup_screen2.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Sizer',
            theme: ThemeData.light(),
            home: SplashScreen());
      },
    );
  }
}
