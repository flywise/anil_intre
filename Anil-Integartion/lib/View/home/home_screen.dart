import 'package:community/View/Forums/forums_screen1.dart';
import 'package:community/View/bloodbank/blood_group.dart';
import 'package:community/View/bloodbank/blood_screen.dart';
import 'package:community/View/bloodbank/donar_screen.dart';
import 'package:community/View/constant/constant.dart';
import 'package:community/View/donation/donation.dart';
import 'package:community/View/family/family_member.dart';
import 'package:community/View/jobs/jobs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Forums/forums2_screen.dart';
import '../matrimonial/matrimonial_screen.dart';
import '../recognitins/recognitions_screen.dart';
import '../widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _key = GlobalKey();
    return Scaffold(
      backgroundColor: Color(0xff4A3434),
      key: _key,
      drawer: OpenDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 22.h,
                  width: 100.w,
                  child: Image.asset(
                    "lib/assets/images/hm.png",
                    fit: BoxFit.fill,
                  ),
                ),
                // 2.h.heightBox,
                Positioned(
                  top: 3.5.h,
                  left: 15,
                  child: Row(
                    children: [
                      Container(
                        height: 5.h,
                        width: 10.w,
                        decoration:
                            BoxDecoration(color: Colors.black.withOpacity(0.6)),
                        child: InkWell(
                          onTap: () {
                            _key.currentState!.openDrawer();
                          },
                          child: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      4.w.widthBox,
                      Text(
                        "Community",
                        style: text3,
                      ),
                      42.w.widthBox,
                      Container(
                          height: 4.h,
                          width: 10.w,
                          child: Image.asset(
                            "lib/assets/images/metpic.png",
                            fit: BoxFit.fill,
                          ))
                    ],
                  ),
                ),
                Positioned(
                  top: 13.h,
                  left: 12.w,
                  child: Container(
                    height: 4.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.sp)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Search Name or Mobile number"),
                          Icon(Icons.search)
                        ]).pSymmetric(h: 2.h),
                  ),
                )
              ],
            ),
            2.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "lib/assets/images/h5.png",
                  height: 15.h,
                  width: 42.w,
                  fit: BoxFit.fill,
                ).onTap(() {
                  Get.to(
                    () => FamilyMember(),
                    transition: Transition.rightToLeft,
                    duration: const Duration(milliseconds: 800),
                  );
                }),
                Image.asset(
                  "lib/assets/images/h2.png",
                  height: 15.h,
                  width: 42.w,
                  fit: BoxFit.fill,
                ).onTap(() {
                  Get.to(
                    () => Jobs(),
                    transition: Transition.rightToLeft,
                    duration: const Duration(milliseconds: 800),
                  );
                }),
              ],
            ).pSymmetric(h: 3.h),
            2.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "lib/assets/images/h3.png",
                  height: 15.h,
                  width: 42.w,
                  fit: BoxFit.fill,
                ).onTap(() {
                  Get.to(
                    () => DonationScreen(),
                    transition: Transition.rightToLeft,
                    duration: const Duration(milliseconds: 800),
                  );
                }),
                Image.asset(
                  "lib/assets/images/h6.png",
                  height: 15.h,
                  width: 42.w,
                  fit: BoxFit.fill,
                ).onTap(() {
                  Get.to(
                    () => MatrimonialScreen(),
                    transition: Transition.rightToLeft,
                    duration: const Duration(milliseconds: 800),
                  );
                }),
              ],
            ).pSymmetric(h: 3.h),
            2.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "lib/assets/images/h1.png",
                  height: 15.h,
                  width: 42.w,
                  fit: BoxFit.fill,
                ).onTap(() {
                  Get.to(
                    () => BloodScreen(),
                    transition: Transition.rightToLeft,
                    duration: const Duration(milliseconds: 800),
                  );
                }),
                Image.asset(
                  "lib/assets/images/h4.png",
                  height: 15.h,
                  width: 42.w,
                  fit: BoxFit.fill,
                ).onTap(() {
                  Get.to(
                    () => RecognitionsScreen(),
                    transition: Transition.rightToLeft,
                    duration: const Duration(milliseconds: 800),
                  );
                }),
              ],
            ).pSymmetric(h: 3.h),
            2.h.heightBox,
            Image.asset(
              "lib/assets/images/h7.png",
              height: 15.h,
              width: 42.w,
              fit: BoxFit.fill,
            ).pSymmetric(h: 3.h).onTap(() {
              Get.to(
                () => Forums2(),
                transition: Transition.rightToLeft,
                duration: const Duration(milliseconds: 800),
              );
            }),
            5.h.heightBox,
          ],
        ),
      ),
    );
  }
}
