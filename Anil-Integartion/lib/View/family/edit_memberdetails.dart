import 'package:community/View/constant/constant.dart';
import 'package:community/View/family/edit_memberdetails2.dart';
import 'package:community/View/family/edit_memberdetails_controller.dart';
import 'package:community/View/widgets/form_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class EditMemberDetails extends StatefulWidget {
  EditMemberDetails({Key? key}) : super(key: key);

  @override
  State<EditMemberDetails> createState() => _EditMemberDetailsState();
}

class _EditMemberDetailsState extends State<EditMemberDetails> {
  EditMemberController _editMemberController = Get.put(EditMemberController());
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
    'Other',
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
      appBar: AppBar(
        backgroundColor: Color(0xff741CE5),
        title: Text("Add family details"),
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
            Obx(() => Center(
                  child: Container(
                          height: 15.h,
                          width: 25.w,
                          child: _editMemberController.image.value.path == ""
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
                                        _editMemberController.image.value),
                                  )))
                      .onTap(() async {
                    _editMemberController.pickImage(ImageSource.gallery);
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
                Get.to(() => EditMemberDetails2());
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
                      "Next",
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
