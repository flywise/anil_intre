import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../constant/constant.dart';

class BloodGroup2 extends StatefulWidget {
  BloodGroup2({Key? key}) : super(key: key);

  @override
  State<BloodGroup2> createState() => _BloodGroup2State();
}

class _BloodGroup2State extends State<BloodGroup2> {
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
              color: Color(0xffC5D31F).withOpacity(0.4),
              child: Row(
                children: [
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
            ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ListTile(
                      leading: CircleAvatar(
                          radius: (20),
                          backgroundColor: Colors.grey,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset("lib/assets/images/propic2.png"),
                          )),
                      title: Text(
                        "Podrick payne",
                        style: text7,
                      ),
                      subtitle: Text("90XX875230"),
                      trailing: Container(
                        height: 6.h,
                        width: 12.w,
                        decoration: BoxDecoration(
                            color: Color(0xffE85353),
                            borderRadius: BorderRadius.circular(6.sp)),
                        child: Center(
                          child: Text(
                            "A+",
                            style: text6,
                          ),
                        ),
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
