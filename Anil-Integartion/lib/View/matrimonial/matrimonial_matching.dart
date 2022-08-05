import 'package:community/View/constant/constant.dart';
import 'package:community/View/matrimonial/metrimonial_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class MatrimonialMatching extends StatefulWidget {
  MatrimonialMatching({Key? key}) : super(key: key);

  @override
  State<MatrimonialMatching> createState() => _MatrimonialMatchingState();
}

class _MatrimonialMatchingState extends State<MatrimonialMatching> {
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            2.h.heightBox,
            Row(
              children: [
                Container(
                    height: 6.h,
                    width: 20.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10.sp),
                            topLeft: Radius.circular(10.sp)),
                        color: Color(0xff9747FF)),
                    child: Image.asset(
                      "lib/assets/images/semenu.png",
                    )),
                Container(
                    height: 6.h,
                    width: 56.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.sp),
                      child: Text(
                        "Search Profile ",
                        style: text4,
                      ),
                    )),
                Container(
                    height: 6.h,
                    width: 20.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10.sp),
                            topRight: Radius.circular(10.sp)),
                        color: Color(0xff9747FF)),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    )),
              ],
            ),
            1.h.heightBox,
            Container(
              height: 5.h,
              width: 100.w,
              color: Color(0xff651EC1).withOpacity(.4),
              child: Row(
                children: [
                  Text(
                    "Matching ",
                    style: text7,
                  ),
                ],
              ).pSymmetric(h: 2.h),
            ),
            2.h.heightBox,
            GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 6,
                  childAspectRatio: 4 / 2,
                  mainAxisSpacing: 12,
                  mainAxisExtent: 185,
                ),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                      height: 23.h,
                      // width: 4.w,
                      decoration: BoxDecoration(
                          border: Border.all(color: black),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 8.h,
                                width: 16.w,
                                child: Image.asset(
                                  "lib/assets/images/metropic.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              2.w.widthBox,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Amber Heard",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  1.h.heightBox,
                                  Text(
                                    "25",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  1.h.heightBox,
                                  Text(
                                    "Female",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ).p4(),
                          1.h.heightBox,
                          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sapien neque")
                              .pSymmetric(h: 1.h),
                          Text(
                            "more...",
                            style: TextStyle(color: Color(0xff29A5EB)),
                          ).pSymmetric(h: 1.h),
                        ],
                      ));
                }).onTap(() {
              Get.to(() => MetrimonialDetails());
            }),
            2.h.heightBox,
            Container(
              height: 5.h,
              width: 100.w,
              color: Color(0xff651EC1).withOpacity(.4),
              child: Row(
                children: [
                  Text(
                    "All Profiles",
                    style: text7,
                  ),
                ],
              ).pSymmetric(h: 2.h),
            ),
            2.h.heightBox,
            GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 6,
                  childAspectRatio: 4 / 2,
                  mainAxisSpacing: 12,
                  mainAxisExtent: 185,
                ),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                      height: 23.h,
                      // width: 4.w,
                      decoration: BoxDecoration(
                          border: Border.all(color: black),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 8.h,
                                width: 16.w,
                                child: Image.asset(
                                  "lib/assets/images/metropic.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              2.w.widthBox,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Amber Heard",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  1.h.heightBox,
                                  Text(
                                    "25",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  1.h.heightBox,
                                  Text(
                                    "Female",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ).p4(),
                          1.h.heightBox,
                          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sapien neque")
                              .pSymmetric(h: 1.h),
                          Text(
                            "more...",
                            style: TextStyle(color: Color(0xff29A5EB)),
                          ).pSymmetric(h: 1.h),
                        ],
                      ));
                }).onTap(() {
              Get.to(() => MetrimonialDetails());
            }),
            5.h.heightBox,
          ],
        ).pSymmetric(h: 1.h),
      ),
    );
  }
}
