import 'package:community/View/constant/constant.dart';
import 'package:community/View/matrimonial/matrimonial%20_post.dart';
import 'package:community/View/matrimonial/matrimonial_edit.dart';
import 'package:community/View/matrimonial/matrimonial_matching.dart';
import 'package:community/View/matrimonial/matrimonial_post_data.dart';
import 'package:community/View/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class MatrimonialScreen extends StatefulWidget {
  MatrimonialScreen({Key? key}) : super(key: key);

  @override
  State<MatrimonialScreen> createState() => _MatrimonialScreenState();
}

class _MatrimonialScreenState extends State<MatrimonialScreen> {
  List<String> Gender = <String>[
    'Male',
    'Female',
  ];
  List<String> age1 = <String>[
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
  ];
  List<String> age2 = <String>[
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
  ];

  String Genderdrop = 'Male';
  String age1drop = '18';
  String age2drop = '25';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff9D73D3).withOpacity(0.3),
      appBar: AppBar(
        backgroundColor: Color(0xff741CE5),
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back)),
        title: Text("Metrimonial"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Robert Downey",
                      style: text2,
                    ),
                    0.5.h.heightBox,
                    Text(
                      "Here’s the metrimonial dashboard",
                      style: TextStyle(color: Color(0xff4A1A88)),
                    )
                  ],
                ),
                SizedBox(
                    height: 7.h,
                    width: 15.w,
                    child: Image.asset(
                      "lib/assets/images/metpic.png",
                      fit: BoxFit.fill,
                    )).onTap(() {
                  Get.to(() => ProfileScreen());
                })
              ],
            ),
            2.h.heightBox,
            Center(
              child: Text(
                "I am looking for",
                style: text2,
              ),
            ),
            1.h.heightBox,
            Center(
              child: Container(
                width: 50.w,
                height: 5.h,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(7)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    onChanged: (String? newValue) {
                      setState(() {
                        Genderdrop = newValue!;
                      });
                    },
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey,
                    ),
                    value: Genderdrop,
                    isExpanded: true,
                    items: Gender.map<DropdownMenuItem<String>>((String Value) {
                      return DropdownMenuItem<String>(
                        value: Value,
                        child: Text(Value),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            2.h.heightBox,
            Text(
              "Aged",
              style: text2,
            ),
            1.h.heightBox,
            Row(
              children: [
                Container(
                  width: 40.w,
                  height: 5.h,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(7)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      onChanged: (String? newValue) {
                        setState(() {
                          age1drop = newValue!;
                        });
                      },
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.grey,
                      ),
                      value: age1drop,
                      isExpanded: true,
                      items: age1.map<DropdownMenuItem<String>>((String Value) {
                        return DropdownMenuItem<String>(
                          value: Value,
                          child: Text(Value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                2.w.widthBox,
                Text(
                  "To",
                  style: text2,
                ),
                2.w.widthBox,
                Container(
                  width: 40.w,
                  height: 5.h,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(7)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      onChanged: (String? newValue) {
                        setState(() {
                          age2drop = newValue!;
                        });
                      },
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.grey,
                      ),
                      value: age2drop,
                      isExpanded: true,
                      items: age2.map<DropdownMenuItem<String>>((String Value) {
                        return DropdownMenuItem<String>(
                          value: Value,
                          child: Text(Value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
            3.h.heightBox,
            Center(
              child: Container(
                height: 5.h,
                width: 40.w,
                decoration: BoxDecoration(
                    color: Color(0xff0D6292),
                    borderRadius: BorderRadius.circular(20.sp)),
                child: Center(
                  child: Text(
                    "Search",
                    style: text2,
                  ),
                ),
              ),
            ).onTap(() {
              Get.to(() => MatrimonialMatching());
            }),
            3.h.heightBox,
            Container(
              height: 0.4.h,
              width: 100.w,
              color: Colors.white,
            ),
            2.h.heightBox,
            Text(
              "My Posts",
              style: text2,
            ),
            ListView.builder(
                itemCount: 2,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    height: 12.h,
                    width: 100.w,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 10.h,
                          width: 20.w,
                          child: Image.asset(
                            "lib/assets/images/metropic.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        3.w.widthBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Name",
                                  style: text7,
                                ),
                                5.w.widthBox,
                                Text(
                                  "25 yr",
                                  style: text7,
                                ),
                                4.w.widthBox,
                                Text(
                                  "Female",
                                  style: text7,
                                ),
                              ],
                            ),
                            0.5.h.heightBox,
                            Text("It is a long established fact"),
                            Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: 'distracted by the',
                                    style: TextStyle(color: Colors.black),
                                    children: const <TextSpan>[
                                      TextSpan(
                                          text: '  more...',
                                          style: TextStyle(
                                              color: Color(0xff9147F2))),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Center(
                          child: PopupMenuButton(
                            elevation: 1.0,
                            icon: Icon(
                              Icons.more_vert,
                              size: 25.sp,
                            ),
                            itemBuilder: (BuildContext context) =>
                                <PopupMenuEntry>[
                              PopupMenuItem(
                                child: InkWell(
                                  onTap: () {
                                    Get.to(() => MatrimonialEdit());
                                  },
                                  child: ListTile(
                                    title: Text('Edit'),
                                  ),
                                ),
                              ),
                              const PopupMenuItem(
                                child: ListTile(
                                  title: Text('Delete'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ).pSymmetric(h: 1.h, v: 1.h),
                  );
                }),
            3.h.heightBox,
            Center(
              child: Container(
                height: 6.h,
                width: 70.w,
                decoration: BoxDecoration(
                    color: Color(0xff9747FF),
                    borderRadius: BorderRadius.circular(7.sp)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add_circle_outline,
                      color: Colors.white,
                    ),
                    4.w.widthBox,
                    Text(
                      "Post matrimony profile",
                      style: text2,
                    ),
                  ],
                ),
              ),
            ).onTap(() {
              Get.to(() => MetrimonialPostData());
            }),
          ],
        ).pSymmetric(h: 2.h, v: 2.h),
      ),
    );
  }
}
