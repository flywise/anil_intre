import 'package:community/View/Forums/forums_screen1.dart';
import 'package:community/View/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class Forums2 extends StatelessWidget {
  const Forums2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff741CE5),
          title: Text("Forums"),
          leading: InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(Icons.arrow_back)),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            1.h.heightBox,
            Expanded(
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(1.h),
                      height: 15.h,
                      width: 100.w,
                      decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                                "lib/assets/images/doctorgroup.png"),
                          ),
                          1.w.widthBox,
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Doctor’s Community",
                                  style: text6,
                                ),
                                1.h.heightBox,
                                Row(
                                  children: [
                                    Text(
                                      "500 Members",
                                      style: text4,
                                    ),
                                    15.w.widthBox,
                                    Container(
                                      height: 3.h,
                                      width: 20.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xff3022D1),
                                          borderRadius:
                                              BorderRadius.circular(20.sp)),
                                      child: Center(
                                        child: Text(
                                          "Join",
                                          style: text2,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                1.h.heightBox,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Stack(children: [
                                      SizedBox(
                                        width: 100,
                                        child: CircleAvatar(
                                            radius: (17),
                                            backgroundColor: Colors.white,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              child: Image.asset(
                                                  "lib/assets/images/doctor1.png"),
                                            )),
                                      ),
                                      Positioned(
                                        left: 10,
                                        child: CircleAvatar(
                                            radius: (17),
                                            backgroundColor: Colors.white,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              child: Image.asset(
                                                  "lib/assets/images/doctor2.png"),
                                            )),
                                      ),
                                      Positioned(
                                        left: 60,
                                        child: CircleAvatar(
                                            radius: (17),
                                            backgroundColor: Colors.white,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              child: Image.asset(
                                                  "lib/assets/images/doctor3.png"),
                                            )),
                                      ),
                                    ]),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Text("+20 more", style: text7),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }).onTap(() {
                Get.to(() => Forums1());
              }),
            )
          ],
        ));
  }
}
