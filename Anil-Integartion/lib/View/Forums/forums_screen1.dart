import 'package:community/View/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class Forums1 extends StatefulWidget {
  const Forums1({Key? key}) : super(key: key);

  @override
  State<Forums1> createState() => _Forums1State();
}

class _Forums1State extends State<Forums1> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                    height: 20.h,
                    width: 100.w,
                    child: Image.asset(
                      "lib/assets/images/forumsimage.png",
                      fit: BoxFit.fill,
                    )),
                Positioned(
                    top: 12.h,
                    child: Container(
                        height: 15.h,
                        width: 60.w,
                        child:
                            Image.asset("lib/assets/images/doctorgroup.png")))
              ],
            ),
            10.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Doctor’s Community",
                  style: text6,
                ),
                3.w.widthBox,
                Container(
                  height: 1.5.h,
                  width: 3.w,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10.sp)),
                ),
                2.w.widthBox,
                Text(
                  "500 Members",
                  style: text7,
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
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset("lib/assets/images/doctor1.png"),
                        )),
                  ),
                  Positioned(
                    left: 10,
                    child: CircleAvatar(
                        radius: (17),
                        backgroundColor: Colors.white,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset("lib/assets/images/doctor2.png"),
                        )),
                  ),
                  Positioned(
                    left: 60,
                    child: CircleAvatar(
                        radius: (17),
                        backgroundColor: Colors.white,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset("lib/assets/images/doctor3.png"),
                        )),
                  ),
                ]),
                SizedBox(
                  width: 2.w,
                ),
                Text("+20 more", style: text7)
              ],
            ),
            1.h.heightBox,
            Container(
              height: 4.h,
              width: 25.w,
              decoration: BoxDecoration(
                  color: Color(0xff3022D1),
                  borderRadius: BorderRadius.circular(20.sp)),
              child: Center(
                child: Text(
                  "Join",
                  style: text2,
                ),
              ),
            ),
            2.h.heightBox,
            Container(
              height: 0.2.h,
              color: Colors.grey,
            ),
            2.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.image_outlined,
                  size: 30.sp,
                ),
                2.w.widthBox,
                Text(
                  "Photo",
                  style: text7,
                ),
                8.w.widthBox,
                Icon(
                  Icons.play_circle,
                  size: 30.sp,
                ),
                2.w.widthBox,
                Text(
                  "Video",
                  style: text7,
                ),
              ],
            ),
            2.h.heightBox,
            Container(
              height: 0.2.h,
              color: Colors.grey,
            ),
            2.h.heightBox,
            Container(
              height: 34.9.h,
              width: 100.w,
              decoration: BoxDecoration(color: Color(0xffD9D9D9)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  1.h.heightBox,
                  Row(
                    children: [
                      Image.asset(
                        "lib/assets/images/doctor2.png",
                        fit: BoxFit.fill,
                        height: 5.h,
                      ),
                      3.w.widthBox,
                      Text(
                        "Dr. Strange",
                        style: text6,
                      )
                    ],
                  ),
                  0.5.h.heightBox,
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur",
                    style: text4,
                  ),
                  1.h.heightBox,
                  Container(
                    height: 25.h,
                    width: 100.w,
                    child: Container(
                      height: 5.h,
                      child: Stack(
                        children: [
                          Container(
                            width: 100.w,
                            child: Image.asset(
                              "lib/assets/images/op1.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Positioned(
                            top: 17.h,
                            child: Container(
                              height: 8.h,
                              width: 100.w,
                              color: Colors.black.withOpacity(0.6),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.favorite_border_outlined,
                                    color: Colors.white,
                                    size: 35.sp,
                                  ),
                                  Icon(
                                    Icons.chat_bubble_outline_rounded,
                                    color: Colors.white,
                                    size: 35.sp,
                                  ).onTap(() {
                                    Get.bottomSheet(Container(
                                        height: 40.h,
                                        width: double.infinity,
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 5.h,
                                              width: 100.w,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Color(0xff05F0FF)
                                                      .withOpacity(0.5)),
                                              child: const TextField(
                                                decoration: InputDecoration(
                                                  suffixIcon: Icon(Icons.send),
                                                  border: OutlineInputBorder(
                                                      borderSide:
                                                          BorderSide.none),
                                                  hintText:
                                                      "Write your comment",
                                                ),
                                              ),
                                            ).p12(),
                                            Row(
                                              children: [
                                                Image.asset(
                                                  "lib/assets/images/propic2.png",
                                                  height: 5.h,
                                                  width: 10.w,
                                                ),
                                                3.w.widthBox,
                                                Text(
                                                  "Jon",
                                                  style: text6,
                                                ),
                                                5.w.widthBox,
                                                Text(
                                                  "This looks great",
                                                )
                                              ],
                                            ).p12(),
                                            Row(
                                              children: [
                                                Image.asset(
                                                  "lib/assets/images/propic2.png",
                                                  height: 5.h,
                                                  width: 10.w,
                                                ),
                                                3.w.widthBox,
                                                Text(
                                                  "Jon",
                                                  style: text6,
                                                ),
                                                5.w.widthBox,
                                                Text(
                                                  "This looks great",
                                                )
                                              ],
                                            ).p12(),
                                            Row(
                                              children: [
                                                Image.asset(
                                                  "lib/assets/images/propic2.png",
                                                  height: 5.h,
                                                  width: 10.w,
                                                ),
                                                3.w.widthBox,
                                                Text(
                                                  "Jon",
                                                  style: text6,
                                                ),
                                                5.w.widthBox,
                                                Text(
                                                  "This looks great",
                                                )
                                              ],
                                            ).p12(),
                                          ],
                                        )));
                                  }),
                                  Icon(
                                    Icons.send,
                                    color: Colors.white,
                                    size: 35.sp,
                                  ).onTap(() {
                                    _onshare(context);
                                  }),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ).onTap(() {
                    // Get.to(() => Forums1());
                  }),
                ],
              ),
            ).pSymmetric(h: 1.h, v: 1.h)
          ],
        ),
      ),
    );
  }

  void _onshare(BuildContext context) async {
    Share.share('Share Data');
  }
}
