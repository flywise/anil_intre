import 'package:community/View/constant/constant.dart';
import 'package:community/View/jobs/job_applicant.dart';
import 'package:community/View/jobs/job_applied_final.dart';
import 'package:community/View/jobs/job_delete.dart';
import 'package:community/View/jobs/job_location.dart';
import 'package:community/View/jobs/jobs_details.dart';
import 'package:community/View/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class Jobs extends StatelessWidget {
  const Jobs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff741CE5),
        leading: InkWell(
            onTap: () {
              Get.off(
                () => Bottom(),
                transition: Transition.leftToRight,
                duration: const Duration(milliseconds: 800),
              );
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            2.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 6.h,
                  width: 44.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Color(0xff9747FF),
                  ),
                  child: Center(
                    child: Text(
                      "Availabe Jobs",
                      style: text2,
                    ),
                  ),
                ),
                Container(
                  height: 6.h,
                  width: 44.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: Center(
                    child: Text(
                      "My Posts",
                      style: text7,
                    ),
                  ),
                ).onTap(() {
                  Get.to(() => JobDetails());
                })
              ],
            ).pSymmetric(h: 2.h),
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
                    width: 51.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.sp),
                      child: Text(
                        "Search Jobs ",
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
            ).pSymmetric(h: 2.h),
            2.h.heightBox,
            ListView.builder(
                itemCount: 12,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    height: 12.h,
                    width: 100.w,
                    // color: Colors.grey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        1.h.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "UI/UX   Designer",
                              style: text6,
                            ),
                            Text(
                              "5-10 LPA",
                              style: TextStyle(
                                  fontSize: 15.sp, color: Color(0xff9747FF)),
                            ),
                          ],
                        ).pSymmetric(h: 2.h),
                        Text("Lorem ipsum dolor sit amet,  ")
                            .pSymmetric(h: 2.h),
                        Text("consectetur adipiscing elit.  ")
                            .pSymmetric(h: 2.h),
                        2.h.heightBox,
                        Container(
                          height: 0.4.h,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  );
                }).onTap(() {
              Get.to(() => JobAppliedFinal());
            }),
            7.h.heightBox,
          ],
        ),
      ),
    );
  }
}
