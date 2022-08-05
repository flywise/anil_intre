import 'package:community/View/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class JobApplicant extends StatefulWidget {
  JobApplicant({Key? key}) : super(key: key);

  @override
  State<JobApplicant> createState() => _JobApplicantState();
}

class _JobApplicantState extends State<JobApplicant> {
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
          children: [
            1.h.heightBox,
            Container(
              height: 5.h,
              width: 100.w,
              color: Color(0xff1FD326),
              child: Row(
                children: [
                  Text(
                    "Applicants",
                    style: text7,
                  ),
                  4.w.widthBox,
                  Text(
                    "4",
                    style: text7,
                  )
                ],
              ).pSymmetric(h: 2.h),
            ),
            2.h.heightBox,
            ListView.builder(
                itemCount: 12,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      1.h.heightBox,
                      Container(
                        height: 10.h,
                        width: 100.w,
                        margin: EdgeInsets.all(2),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 6.h,
                                width: 12.w,
                                child: Image.asset(
                                  "lib/assets/images/propic2.png",
                                  fit: BoxFit.fill,
                                )),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Clair Burge",
                                  style: text6,
                                ),
                                0.5.h.heightBox,
                                Text("New Delhi , India  "),
                                0.5.h.heightBox,
                                Text("+911XXX98248  ")
                              ],
                            ).pSymmetric(h: 2.h),
                            10.w.widthBox,
                            Text(
                              "UX Designer",
                              style: TextStyle(
                                  fontSize: 15.sp, color: Color(0xff9747FF)),
                            ),
                          ],
                        ).pSymmetric(h: 2.h),
                      ),
                      Container(
                        height: 0.4.h,
                        color: Colors.grey,
                        width: 100.w,
                      )
                    ],
                  );
                }),
          ],
        ),
      ),
    );
  }
}
