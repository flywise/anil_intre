import 'package:community/View/constant/constant.dart';
import 'package:community/View/edit_profile/edit_profile2.dart';
import 'package:community/View/user/Signup/signup_screen2.dart';
import 'package:community/View/widgets/form_text_field.dart';
import 'package:country_state_city_picker/country_state_city_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class EditProfile1 extends StatefulWidget {
  const EditProfile1({Key? key}) : super(key: key);

  @override
  State<EditProfile1> createState() => _SignUpState();
}

class _SignUpState extends State<EditProfile1> {
  List<String> Country = <String>[
    'Afghanistan',
    'Albania',
    'Contact number not reachable',
    'Algeria',
    'Andorra',
    'Australia',
    'India'
  ];
  List<String> State = <String>[
    'Andhra Pradesh',
    'Arunachal Pradesh',
    'Assam',
    'Bihar',
    'Chhattisgarh',
    'Goa',
    'Gujarat'
  ];
  List<String> District = <String>[
    'Anjaw',
    'Changlang',
    'Dibang Valley',
    'East Kameng',
    'East Siang',
    'Itanagar',
    'Kra Daadi'
  ];
  String Countrydrop = 'India';
  String Statedrop = 'Arunachal Pradesh';
  String Districdrop = 'Anjaw';

  String? countryValue;
  String? stateValue;
  String? cityValue;
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
              child: Image.asset("lib/assets/images/move1.png"),
            ),
            2.h.heightBox,
            FormTextField(
              hint: "",
              inputName: "Full name",
            ),
            2.h.heightBox,
            Text(
              "Country",
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
                      Countrydrop = newValue!;
                    });
                  },
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.grey,
                  ),
                  value: Countrydrop,
                  isExpanded: true,
                  items: Country.map<DropdownMenuItem<String>>((String Value) {
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
              "State",
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
                      Statedrop = newValue!;
                    });
                  },
                  hint: Text('Select'),
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.grey,
                  ),
                  value: Statedrop,
                  isExpanded: true,
                  items: State.map<DropdownMenuItem<String>>((String Value) {
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
              "District",
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
                      Districdrop = newValue!;
                    });
                  },
                  hint: Text('Select'),
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.grey,
                  ),
                  value: Districdrop,
                  isExpanded: true,
                  items: District.map<DropdownMenuItem<String>>((String Value) {
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
              inputName: "Town (Taluk)",
            ),
            2.h.heightBox,
            FormTextField(
              hint: "",
              inputName: "Village",
            ),
            2.h.heightBox,
            FormTextField(
              hint: "",
              inputName: "Pincode",
            ),
            2.h.heightBox,
            FormTextField(
              hint: "",
              inputName: "Mobile Number",
            ),
            2.h.heightBox,
            FormTextField(
              hint: "",
              inputName: "Emergency Contact Number",
            ),
            2.h.heightBox,
            FormTextField(
              hint: "",
              inputName: "Native Place",
            ),
            3.h.heightBox,
            InkWell(
              onTap: () {
                Get.to(SignupScreen2());
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
              Get.to(() => EditProfile2());
            }),
              ),
            ),
            4.h.heightBox,
          ],
        ).pSymmetric(
          h: 4.h,
        ),
      ),
    );
  }
}
