import 'package:community/View/constant/constant.dart';
import 'package:community/View/family/addfamily/addfamily_details.dart';
import 'package:community/View/family/addfamily/id_card.dart';
import 'package:community/View/family/edit_memberdetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class FamilyMember extends StatelessWidget {
  const FamilyMember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff741CE5),
        title: Text("Family"),
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        1.h.heightBox,
        Text(
          "Total family members",
          style: text6,
        ).pSymmetric(h: 1.h),
        Expanded(
          child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(1.h),
                  height: 13.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      color: Color(0xffAE7CEE),
                      borderRadius: BorderRadius.circular(10.sp)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: 10.h,
                            width: 20.w,
                            child: Image.asset(
                              "lib/assets/images/familypic.png",
                              fit: BoxFit.fill,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Jacob Row",
                              style: text6,
                            ),
                            Row(
                              children: [
                                Text(
                                  "D.O.B    ",
                                  style: text4,
                                ),
                                Text(
                                  "25-X-XXX",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13.sp),
                                ),
                                20.w.widthBox,
                                PopupMenuButton(
                                  elevation: 1.0,
                                  icon: Icon(Icons.more_horiz),
                                  itemBuilder: (BuildContext context) =>
                                      <PopupMenuEntry>[
                                    PopupMenuItem(
                                      child: ListTile(
                                        title: InkWell(
                                            onTap: () {
                                              Get.to(() => EditMemberDetails());
                                            },
                                            child: Text('Edit')),
                                      ),
                                    ),
                                    const PopupMenuItem(
                                      child: ListTile(
                                        title: Text('Delete'),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            1.h.heightBox,
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }).onTap(() {
            Get.to(() => IdCard());
          }),
        )
      ]),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.to(() => AddFamilyDetails());
        },
        label: const Text('Add member'),
        icon: const Icon(Icons.add),
        backgroundColor: Color(0xff4A1A88),
      ),
    );
  }
}
