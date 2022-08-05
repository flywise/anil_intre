import 'package:community/View/edit_profile/edit_profile1.dart';
import 'package:community/View/jobs/job_applicant.dart';
import 'package:community/View/jobs/job_delete.dart';
import 'package:community/View/jobs/job_post.dart';
import 'package:community/View/jobs/job_posted.dart';
import 'package:community/View/jobs/jobs_details.dart';
import 'package:community/View/profile/profile_chat.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../constant/constant.dart';
import '../widgets/form_text_field.dart';

class ProfileDetails extends StatefulWidget {
  ProfileDetails({Key? key}) : super(key: key);

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      "lib/assets/images/profilegr.png",
                      fit: BoxFit.fill,
                    )),
                Positioned(
                    top: 12.h,
                    child: Container(
                        height: 15.h,
                        width: 60.w,
                        child: Image.asset("lib/assets/images/ppic.png")))
              ],
            ),
            7.h.heightBox,
            Text(
              "Robert Downey",
              style: text5,
            ).text.make().centered(),
            0.5.heightBox,
            Text(
              "Hollywood, USA",
              style: text9,
            ).text.make().centered(),
            2.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "5",
                  style: TextStyle(fontSize: 20.sp, color: Color(0xff9747FF)),
                ).onTap(() {
                  Get.to(() => ProfileChat());
                }),
                Text(
                  "₹5000",
                  style: TextStyle(fontSize: 20.sp, color: Color(0xffE04444)),
                ),
                Text(
                  "4",
                  style: TextStyle(fontSize: 20.sp, color: Color(0xff9747FF)),
                ).pSymmetric(h: 2.h).onTap(() {
                  Get.to(() => JobPosted());
                }),
              ],
            ).pSymmetric(h: 4.h),
            1.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // 0.w.widthBox,
                Text("Chats", style: text9).onTap(() {
                  Get.to(() => ProfileChat());
                }),
                2.w.widthBox,
                Text("Total donations", style: text9),
                Text("Jobs posted", style: text9).onTap(() {
                  Get.to(() => JobPosted());
                }),
              ],
            ).pSymmetric(h: 2.h),
            25.h.heightBox,
            Container(
              height: 6.h,
              width: 40.w,
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(15.sp)),
              child: Center(
                  child: Text(
                "Edit Profile",
                style: text6,
              )),
            ).onTap(() {
              Get.to(() => EditProfile1());
            }),
            4.h.heightBox,
            Container(
              height: 6.h,
              width: 80.w,
              decoration: BoxDecoration(
                  color: Color(0xff9747FF),
                  borderRadius: BorderRadius.circular(7.sp)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.file_download_outlined,
                    color: Colors.white,
                  ),
                  4.w.widthBox,
                  Text(
                    "Download Id Card ",
                    style: text2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
