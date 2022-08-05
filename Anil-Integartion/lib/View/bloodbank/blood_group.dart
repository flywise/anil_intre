import 'package:community/View/bloodbank/blood_group2.dart';
import 'package:community/View/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class BloodGroup extends StatefulWidget {
  BloodGroup({Key? key}) : super(key: key);

  @override
  State<BloodGroup> createState() => _BloodGroupState();
}

class _BloodGroupState extends State<BloodGroup> {
  List<String> Blood = [
    "A",
    "B",
    "B+",
    "A+",
    "O+",
    "O-",
    "A-",
    "A",
    "B",
    "B+",
    "A+",
    "O+",
    "O-",
    "A-",
    "A",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff741CE5),
        title: Text("Blood bank"),
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 6.h,
              width: 100.w,
              color: Color(0xffCEB7ED),
              child: Row(
                children: [
                  CircleAvatar(
                      radius: (20),
                      backgroundColor: Colors.grey,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("lib/assets/images/propic2.png"),
                      )),
                  3.w.widthBox,
                  Text(
                    "My Blood Group ",
                    style: text6,
                  ),
                  Spacer(),
                  Text(
                    "A+",
                    style: text6,
                  ),
                ],
              ).pSymmetric(h: 2.h),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Blood Group",
                          style: text7,
                        ),
                        Icon(
                          Icons.play_arrow,
                          color: Colors.red,
                          size: 25.sp,
                        ),
                      ],
                    ),
                    1.h.heightBox,
                    Container(
                      height: 0.5,
                      width: 40.w,
                      color: Colors.black,
                    ),
                    1.h.heightBox,
                    Text(
                      "Country",
                      style: text7,
                    ),
                    1.h.heightBox,
                    Container(
                      height: 0.5,
                      width: 40.w,
                      color: Colors.black,
                    ),
                    1.h.heightBox,
                    Text(
                      "State",
                      style: text7,
                    ),
                    1.h.heightBox,
                    Container(
                      height: 0.5,
                      width: 40.w,
                      color: Colors.black,
                    ),
                    1.h.heightBox,
                    Text(
                      "District",
                      style: text7,
                    ),
                    1.h.heightBox,
                    Container(
                      height: 0.5,
                      width: 40.w,
                      color: Colors.black,
                    ),
                    1.h.heightBox,
                    Text(
                      "City",
                      style: text7,
                    ),
                    1.h.heightBox,
                    Container(
                      height: 0.5,
                      width: 40.w,
                      color: Colors.black,
                    ),
                  ],
                ),
                3.w.widthBox,
                Container(
                  height: 74.h,
                  width: 0.5.w,
                  color: Colors.black,
                ),
                Container(
                  height: 77.h,
                  width: 20.w,
                  child: ListView.builder(
                      itemCount: Blood.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            30.w.widthBox,
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                Blood[index],
                                style: text6,
                              ),
                            ),
                          ],
                        );
                      }),
                ),
              ],
            ).pSymmetric(h: 2.h),
            Container(
              height: 6.h,
              width: 100.w,
              decoration: BoxDecoration(
                  color: Color(0xff7A7FF4),
                  borderRadius: BorderRadius.circular(10.sp)),
              child: Center(
                  child: Text(
                "Search",
                style: text7,
              )),
            ).pSymmetric(h: 2.h).onTap(() {
              Get.to(() => BloodGroup2());
            }),
          ],
        ),
      ),
    );
  }
}
