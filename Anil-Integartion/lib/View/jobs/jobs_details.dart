import 'package:community/View/constant/constant.dart';
import 'package:community/View/jobs/job_applicant.dart';
import 'package:community/View/jobs/job_delete.dart';
import 'package:community/View/jobs/job_post.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class JobDetails extends StatefulWidget {
  JobDetails({Key? key}) : super(key: key);

  @override
  State<JobDetails> createState() => _JobDetailsState();
}

class _JobDetailsState extends State<JobDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff741CE5),
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back)),
      ),
      body: Column(
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
              )
            ],
          ).pSymmetric(h: 2.h),
          2.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 8.h,
                width: 44.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(0.8, 1),
                    colors: <Color>[
                      Color(0xfff8CA98A),
                      Color(0xff9F8F8F),
                    ],
                    tileMode: TileMode.mirror,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jobs Posted",
                      style: text7,
                    ),
                    Text(
                      "10",
                      style:
                          TextStyle(color: Color(0xff3F14EC), fontSize: 15.sp),
                    ),
                  ],
                ).p8(),
              ).onTap(() {
                Get.to(() => JobDelete());
              }),
              Container(
                height: 8.h,
                width: 44.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(0.8, 1),
                    colors: <Color>[
                      Color(0xfff8CA98A),
                      Color(0xff9F8F8F),
                    ],
                    tileMode: TileMode.mirror,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Applicants",
                      style: text7,
                    ),
                    Text(
                      "4",
                      style:
                          TextStyle(color: Color(0xff165F10), fontSize: 15.sp),
                    ),
                  ],
                ).p8(),
              ).onTap(() {
                Get.to(() => JobApplicant());
              }),
            ],
          ).pSymmetric(h: 2.h),
          2.h.heightBox,
          Lottie.asset("lib/assets/images/plusbtn.json",
                  height: 10.h, width: 20.w, fit: BoxFit.fill)
              .onTap(() {
            Get.to(() => JobPost());
          }),
          2.h.heightBox,
        ],
      ),
    );
  }
}
