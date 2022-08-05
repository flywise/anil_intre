import 'dart:ui';
import 'package:community/View/aboutus/about_developer.dart';
import 'package:community/View/aboutus/aboutus_Screen.dart';
import 'package:community/View/contact/contact_us.dart';
import 'package:community/View/faq/faq.dart';
import 'package:community/View/user/login.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:sizer/sizer.dart';

import 'package:velocity_x/velocity_x.dart';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../constant/constant.dart';

class OpenDrawer extends StatefulWidget {
  const OpenDrawer({Key? key}) : super(key: key);

  @override
  _OpenDrawerState createState() => _OpenDrawerState();
}

class _OpenDrawerState extends State<OpenDrawer> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Drawer(
        child: SafeArea(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.20,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(0.8, 1),
                      colors: <Color>[
                        Color(0xffB416AD),
                        Color(0xff710EF1),
                      ], // Gradient from https://learnui.design/tools/gradient-generator.html
                      tileMode: TileMode.mirror,
                    ),
                  ),
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: CircleAvatar(
                          radius: 41,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                                'lib/assets/images/propic2.png'), //NetworkImage
                            radius: 39,
                          ), //CircleAvatar
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Jameson Donn',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.sp,
                            ),
                          ),
                          Text(
                            'Male  29',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.sp,
                            ),
                          ),
                          Text(
                            'Hollywood , USA',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ).pSymmetric(h: 2.h, v: 1.h),
                    ],
                  ).pSymmetric(h: 2.h, v: 2.h),
                ),
                2.h.heightBox,
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white),
                    child: ListView(
                      padding: EdgeInsets.all(0.0),
                      children: [
                        Container(
                          child: ListTile(
                            visualDensity:
                                VisualDensity(horizontal: -1, vertical: -4),
                            leading: Text(
                              "Frequently asked Questions",
                              style: text9,
                            ),
                            trailing: Icon(Icons.arrow_forward_ios_outlined),
                          ),
                        ).onTap(() {
                          Get.to(() => FaqScreen());
                        }),
                        Container(
                          child: ListTile(
                            visualDensity:
                                VisualDensity(horizontal: -1, vertical: -4),
                            leading: Text(
                              "Contact Us",
                              style: text9,
                            ),
                            trailing: Icon(Icons.arrow_forward_ios_outlined),
                          ),
                        ).onTap(() {
                          Get.to(() => ContactUs());
                        }),
                        Container(
                          child: ListTile(
                            visualDensity:
                                VisualDensity(horizontal: -1, vertical: -4),
                            leading: Text(
                              "Invite People",
                              style: text9,
                            ),
                            trailing: Icon(Icons.arrow_forward_ios_outlined),
                          ),
                        ).onTap(() {
                          // Get.to(() => MyDashBoard());
                        }),
                        Container(
                          child: ListTile(
                            visualDensity:
                                VisualDensity(horizontal: -1, vertical: -4),
                            leading: Text(
                              "Export Data",
                              style: text9,
                            ),
                            trailing: Icon(Icons.arrow_forward_ios_outlined),
                          ),
                        ).onTap(() {
                          // Get.to(() => MyDashBoard());
                        }),
                        Container(
                          child: ListTile(
                            visualDensity:
                                VisualDensity(horizontal: -1, vertical: -4),
                            leading: Text(
                              "About Community",
                              style: text9,
                            ),
                            trailing: Icon(Icons.arrow_forward_ios_outlined),
                          ),
                        ).onTap(() {
                          Get.to(() => AboutScreen());
                        }),
                        Container(
                          child: ListTile(
                            visualDensity:
                                VisualDensity(horizontal: -1, vertical: -4),
                            leading: Text(
                              "App Developer",
                              style: text9,
                            ),
                            trailing: Icon(Icons.arrow_forward_ios_outlined),
                          ),
                        ).onTap(() {
                          Get.to(() => AboutDeveloper());
                        }),
                        Container(
                          child: ListTile(
                            visualDensity:
                                VisualDensity(horizontal: -1, vertical: -4),
                            leading: Text("Logout",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 14.sp,
                                )),
                            trailing: Icon(Icons.arrow_forward_ios_outlined),
                          ),
                        ).onTap(() {
                          Get.to(() => Login());
                        }),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
