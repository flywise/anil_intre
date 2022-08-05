import 'package:community/View/constant/constant.dart';
import 'package:community/View/edit_profile/edit_profile3.dart';
import 'package:community/View/user/Signup/signup_screen2_controller.dart';
import 'package:community/View/user/Signup/signup_screen3.dart';
import 'package:community/View/widgets/form_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class EditProfile2 extends StatefulWidget {
  EditProfile2({Key? key}) : super(key: key);

  @override
  State<EditProfile2> createState() => _SignupScreen2State();
}

class _SignupScreen2State extends State<EditProfile2> {
  EditProfileController _editProfileController =
      Get.put(EditProfileController());

  DateTime date = DateTime.now();

  List<String> Country = <String>[
    'Afghanistan',
    'Albania',
    'Contact number not reachable',
    'Algeria',
    'Andorra',
    'Australia',
    'India'
  ];
  List<String> Gender = <String>[
    'Male',
    'Female',
  ];
  List<String> Martial = <String>[
    'Married',
    'Single',
  ];

  List<String> BloodGroup = <String>[
    'A+',
    'B',
    'B+',
    'O-',
  ];
  List<String> Education = <String>['12th', 'Graduate', "Other"];
  List<String> Profession = <String>[
    'Student',
    'Job',
  ];
  List<String> Company = <String>[
    'Abc',
    'Xyz',
  ];

  String Countrydrop = 'India';
  String Genderdrop = 'Male';
  String materialdrop = "Single";
  String BloodGroupdrop = 'B+';
  String Educationdrop = "12th";
  String Professiondrop = 'Job';
  String Companydrop = 'Abc';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            2.h.heightBox,
            Center(
                child: Lottie.asset("lib/assets/images/sinani.json",
                    fit: BoxFit.fill, height: 20.h, width: 50.w)),
            Center(
              child: Image.asset("lib/assets/images/move2.png"),
            ),
            2.h.heightBox,
            Obx(() => Center(
                  child: Container(
                          height: 15.h,
                          width: 25.w,
                          child: _editProfileController.image.value.path == ""
                              ? CircleAvatar(
                                  radius: (20),
                                  backgroundColor: Colors.grey,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                        "lib/assets/images/gg_profile.png"),
                                  ))
                              : CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.transparent,
                                  child: ClipOval(
                                    // borderRadius: BorderRadius.circular(20),
                                    child: Image.file(
                                        fit: BoxFit.fill,
                                        _editProfileController.image.value),
                                  )))
                      .onTap(() async {
                    _editProfileController.pickImage(ImageSource.gallery);
                  }),
                )),
            1.h.heightBox,
            Center(
              child: Text(
                "Choose profile photo",
                style: text4,
              ),
            ),
            3.h.heightBox,
            Text(
              "Bate Of Birth",
              style: text6,
            ),
            SizedBox(
              height: 1.h,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  SizedBox(
                    width: 70.w,
                    child: Text(
                      '  ${date.year}/${date.month}/${date.day}',
                      style: text4,
                    ),
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
            2.h.heightBox,
            Text(
              "Gender",
              style: text6,
            ),
            1.h.heightBox,
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10)),
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
              "Martial Status",
              style: text6,
            ),
            1.h.heightBox,
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  onChanged: (String? newValue) {
                    setState(() {
                      materialdrop = newValue!;
                    });
                  },
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.grey,
                  ),
                  value: materialdrop,
                  isExpanded: true,
                  items: Martial.map<DropdownMenuItem<String>>((String Value) {
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
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10)),
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
                  items:
                      BloodGroup.map<DropdownMenuItem<String>>((String Value) {
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
              "Education",
              style: text6,
            ),
            1.h.heightBox,
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  onChanged: (String? newValue) {
                    setState(() {
                      Educationdrop = newValue!;
                    });
                  },
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.grey,
                  ),
                  value: Educationdrop,
                  isExpanded: true,
                  items:
                      Education.map<DropdownMenuItem<String>>((String Value) {
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
              "Profession",
              style: text6,
            ),
            1.h.heightBox,
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  onChanged: (String? newValue) {
                    setState(() {
                      Professiondrop = newValue!;
                    });
                  },
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.grey,
                  ),
                  value: Professiondrop,
                  isExpanded: true,
                  items:
                      Profession.map<DropdownMenuItem<String>>((String Value) {
                    return DropdownMenuItem<String>(
                      value: Value,
                      child: Text(Value),
                    );
                  }).toList(),
                ),
              ),
            ),
            2.h.heightBox,
            FormTextField(
              hint: "",
              inputName: "Company",
            ),
            4.h.heightBox,
            InkWell(
              onTap: () {
                Get.to(SignupScreen3());
              },
              child: Center(
                child: Container(
                  height: 7.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                      color: Color(0xff1A1242),
                      borderRadius: BorderRadius.circular(20.sp)),
                  child: Center(
                    child: Text(
                      "Continue",
                      style: text2,
                    ),
                  ),
                ).onTap(() {
                  Get.to(() => EditProfile3());
                }),
              ),
            ),
            4.h.heightBox,
          ],
        ).pSymmetric(h: 4.h),
      ),
    );
  }
}
//}
