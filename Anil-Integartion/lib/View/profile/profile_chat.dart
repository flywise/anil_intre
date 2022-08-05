import 'package:community/View/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileChat extends StatefulWidget {
  ProfileChat({Key? key}) : super(key: key);

  @override
  State<ProfileChat> createState() => _ProfileChatState();
}

class _ProfileChatState extends State<ProfileChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff741CE5),
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Chats",
            style: text6,
          ),
          1.h.heightBox,
          Expanded(
            child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 10),
                    height: 8.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(10.sp)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                            radius: (20),
                            backgroundColor: Colors.white,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child:
                                  Image.asset("lib/assets/images/metpic.png"),
                            )),
                        3.w.widthBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Riya",
                              style: text9,
                            ),
                            0.6.h.heightBox,
                            Text(
                              "2 hr ago ",
                            ),
                          ],
                        )
                      ],
                    ).pSymmetric(h: 1.h, v: 1.h),
                  );
                }),
          )
        ],
      ).pSymmetric(h: 2.h, v: 1.h),
    );
  }
}
