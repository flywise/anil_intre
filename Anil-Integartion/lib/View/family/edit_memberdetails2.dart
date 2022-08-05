import 'package:community/View/constant/constant.dart';
import 'package:community/View/family/family_member.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/form_text_field.dart';

class EditMemberDetails2 extends StatefulWidget {
  const EditMemberDetails2({Key? key}) : super(key: key);

  @override
  State<EditMemberDetails2> createState() => _EditMemberDetails2State();
}

class _EditMemberDetails2State extends State<EditMemberDetails2> {
  List<String> Intrest = <String>[
    'Cricket',
    'Reading Books',
    'Other',
  ];

  List<String> Physical_disability = <String>[
    'Yes',
    'No',
  ];

  String Intrestdrop = 'Cricket';

  String Physicaldrop = 'No';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff741CE5),
        title: const Text("Add family details"),
       leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            2.h.heightBox,
            FormTextField(
              hint: "",
              inputName: "Mobile Number",
            ),
            2.h.heightBox,
            FormTextField(
              hint: "",
              inputName: "Designation",
            ),
            2.h.heightBox,
            FormTextField(
              hint: "",
              inputName: "Hobby",
            ),
            2.h.heightBox,
            Text(
              "Intrest",
              style: text6,
            ),
            1.h.heightBox,
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  onChanged: (String? newValue) {
                    setState(() {
                      Intrestdrop = newValue!;
                    });
                  },
                  icon: const Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.grey,
                  ),
                  value: Intrestdrop,
                  isExpanded: true,
                  items: Intrest.map<DropdownMenuItem<String>>((String Value) {
                    return DropdownMenuItem<String>(
                      value: Value,
                      child: Text(Value),
                    );
                  }).toList(),
                ),
              ),
            ),
            2.h.heightBox,
            4.h.heightBox,
            InkWell(
              onTap: () {
                Get.to(() => FamilyMember());
              },
              child: Center(
                child: Container(
                  height: 7.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20.sp)),
                  child: Center(
                    child: Text(
                      "Save",
                      style: text2,
                    ),
                  ),
                ),
              ),
            ),
            4.h.heightBox,
          ],
        ).pSymmetric(h: 4.h),
      ),
    );
  }
}
