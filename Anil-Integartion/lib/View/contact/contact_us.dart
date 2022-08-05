import 'package:community/View/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ContactUs extends StatefulWidget {
  ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff9D73D3).withOpacity(0.1),
      appBar: AppBar(
        backgroundColor: Color(0xff741CE5),
        title: Text("Contact Us"),
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: Column(
        children: [
          Container(
            height: 25.h,
            width: 100.w,
            child: Image.asset(
              "lib/assets/images/contus.png",
              fit: BoxFit.fill,
            ),
          ),
          2.h.heightBox,
          Text(
            "Contact  us    24X7",
            style: text3,
          ),
          3.h.heightBox,
          Container(
            height: 30.h,
            width: 100.w,
            child: Column(children: [
              ListTile(
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                leading: Icon(
                  Icons.phone_outlined,
                  size: 20.sp,
                  color: Color(0xffF69A9A),
                ),
                title: Text(
                  "90XXX87521",
                  style: text2,
                ),
              ),
              ListTile(
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                leading: Icon(
                  Icons.whatsapp,
                  size: 20.sp,
                  color: Color(0xffF69A9A),
                ),
                title: Text(
                  "90XXX87521",
                  style: text2,
                ),
              ),
              ListTile(
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                leading: Icon(
                  Icons.email_outlined,
                  size: 20.sp,
                  color: Color(0xffF69A9A),
                ),
                title: Text(
                  "example@gmail.com",
                  style: text2,
                ),
              ),
            ]),
          ),
          1.h.heightBox,
        ],
      ),
    );
  }
}
