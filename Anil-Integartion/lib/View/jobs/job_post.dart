import 'dart:async';

import 'package:community/View/constant/constant.dart';
import 'package:community/View/jobs/jobs_details.dart';
import 'package:community/View/widgets/job_form_field.dart';
import 'package:community/View/widgets/job_form_field2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Forums/forums_screen1.dart';

class JobPost extends StatefulWidget {
  JobPost({Key? key}) : super(key: key);

  @override
  State<JobPost> createState() => _JobPostState();
}

class _JobPostState extends State<JobPost> {
  DateTime date = DateTime.now();
  List<String> Jobtype = <String>[
    'Full Time',
    'Part Time',
    'Home',
  ];
  String Jobtypedrop = 'Full Time';
  bool isvisible = true;
  bool isvisibletick = false;
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
            2.h.heightBox,
            JobFormField(
              hint: "",
              inputName: "Job Title",
            ),
            2.h.heightBox,
            JobFormField(
              hint: "",
              inputName: "Experince",
            ),
            2.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                JobFormField2(
                  hint: "",
                  inputName: "Position",
                ),
                JobFormField2(
                  hint: "",
                  inputName: "Package",
                )
              ],
            ),
            2.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                JobFormField2(
                  hint: "",
                  inputName: "Location",
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Job Type",
                      style: text7,
                    ),
                    1.h.heightBox,
                    Container(
                      height: 5.h,
                      width: 40.w,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          onChanged: (String? newValue) {
                            setState(() {
                              Jobtypedrop = newValue!;
                            });
                          },
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.grey,
                          ),
                          value: Jobtypedrop,
                          isExpanded: true,
                          items: Jobtype.map<DropdownMenuItem<String>>(
                              (String Value) {
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
              ],
            ),
            2.h.heightBox,
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    style: text7,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Container(
                    height: 15.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: TextField(
                      maxLines: 10,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: "",
                      ),
                    ),
                  ),
                  2.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Start Date",
                            style: text7,
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  '  ${date.year}/${date.month}/${date.day}',
                                  style: text4,
                                ),
                                Icon(Icons.calendar_month)
                              ],
                            ),
                          ).onTap(() async {
                            DateTime? newDate = await showDatePicker(
                              context: context,
                              initialDate: date,
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2100),
                            );
                            if (newDate == null) return;

// if 'OK' => DateTime
                            setState(() => date = newDate);
                          }),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "End Date",
                            style: text7,
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  '  ${date.year}/${date.month}/${date.day}',
                                  style: text4,
                                ),
                                Icon(Icons.calendar_month)
                              ],
                            ),
                          ).onTap(() async {
                            DateTime? newDate = await showDatePicker(
                              context: context,
                              initialDate: date,
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2100),
                            );
                            if (newDate == null) return;

// if 'OK' => DateTime
                            setState(() => date = newDate);
                          }),
                        ],
                      ),
                    ],
                  ),
                  4.h.heightBox,
                  Visibility(
                    visible: isvisible,
                    child: Center(
                      child: Container(
                        height: 5.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                            color: Color(0xff0F72A9),
                            borderRadius: BorderRadius.circular(20.sp)),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isvisible = !isvisible;
                              isvisibletick = !isvisibletick;
                              Timer(
                                  Duration(seconds: 2),
                                  () => Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              JobDetails())));
                            });
                          },
                          child: Center(
                            child: Text(
                              "Post",
                              style: text2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: isvisibletick,
                    child: Lottie.asset(
                      "lib/assets/images/tick.json",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ).pSymmetric(h: 2.h),
      ),
    );
  }
}
