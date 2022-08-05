import 'package:community/View/bloodbank/blood_screen.dart';
import 'package:community/View/widgets/form_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../constant/constant.dart';

class DonarScreen extends StatefulWidget {
  DonarScreen({Key? key}) : super(key: key);

  @override
  State<DonarScreen> createState() => _DonarScreenState();
}

class _DonarScreenState extends State<DonarScreen> {
  List<String> Gender = <String>[
    'Male',
    'Female',
    'Other',
  ];

  List<String> BloodGroup = <String>[
    'A+',
    'B',
    'B+',
    'O-',
  ];

  String Genderdrop = "Male";
  String BloodGroupdrop = "B+";
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          2.h.heightBox,
          FormTextField(
            hint: "",
            inputName: "Full Name",
          ),
          2.h.heightBox,
          FormTextField(
            hint: "",
            inputName: "Date of Birth",
          ),
          2.h.heightBox,
          FormTextField(
            hint: "",
            inputName: "Phone Number",
          ),
          2.h.heightBox,
          FormTextField(
            hint: "",
            inputName: "Location",
          ),
          2.h.heightBox,
          Text(
            "Gender",
            style: text6,
          ),
          1.h.heightBox,
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                border: Border.all(), borderRadius: BorderRadius.circular(10)),
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
          2.h.heightBox,
          Text(
            "Blood Group ",
            style: text6,
          ),
          1.h.heightBox,
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                border: Border.all(), borderRadius: BorderRadius.circular(10)),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                onChanged: (String? newValue) {
                  setState(() {
                    BloodGroupdrop = newValue!;
                  });
                },
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.grey,
                ),
                value: BloodGroupdrop,
                isExpanded: true,
                items: BloodGroup.map<DropdownMenuItem<String>>((String Value) {
                  return DropdownMenuItem<String>(
                    value: Value,
                    child: Text(Value),
                  );
                }).toList(),
              ),
            ),
          ),
          5.h.heightBox,
          Center(
            child: Container(
              height: 5.h,
              width: 35.w,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20.sp)),
              child: Center(
                child: Text(
                  "Submit",
                  style: text2,
                ),
              ),
            ).onTap(() {
              Get.to(() => BloodScreen());
            }),
          ),
        ],
      ).pSymmetric(h: 4.h),
    );
  }
}
