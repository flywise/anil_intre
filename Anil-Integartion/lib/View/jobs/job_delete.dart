import 'package:community/View/constant/constant.dart';
import 'package:community/View/jobs/job_location.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class JobDelete extends StatefulWidget {
  JobDelete({Key? key}) : super(key: key);

  @override
  State<JobDelete> createState() => _JobDeleteState();
}

class _JobDeleteState extends State<JobDelete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff741CE5),
        leading: Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            1.h.heightBox,
            Container(
              height: 5.h,
              width: 100.w,
              color: Color(0xffC5D31F),
              child: Row(
                children: [
                  Text(
                    "Jobs Posted",
                    style: text7,
                  ),
                  4.w.widthBox,
                  Text(
                    "10",
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
                        Row(
                          children: [
                            Text("Lorem ipsum dolor sit amet,  ")
                                .pSymmetric(h: 2.h),
                            25.w.widthBox,
                            SizedBox(
                              height: 3.h,
                              child: PopupMenuButton(
                                elevation: 1.0,
                                icon: Icon(Icons.more_horiz),
                                itemBuilder: (BuildContext context) =>
                                    <PopupMenuEntry>[
                                  // const PopupMenuItem(
                                  //   child: ListTile(
                                  //     title: Text('Edit'),
                                  //   ),
                                  // ),
                                  const PopupMenuItem(
                                    child: ListTile(
                                      title: Text('Delete'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Text("consectetur adipiscing elit.  ")
                            .pSymmetric(h: 2.h),
                        2.h.heightBox,
                        Container(
                          height: 0.4.h,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  );
                }).onTap(() {
              Get.to(() => JobLocation());
            })
          ],
        ),
      ),
    );
  }
}
