import 'package:community/View/constant/constant.dart';
import 'package:community/View/user/create_account.dart';
import 'package:community/View/widgets/form_text_field.dart';
import 'package:community/controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class SignupScreen3 extends StatefulWidget {
  SignupScreen3({Key? key}) : super(key: key);

  @override
  State<SignupScreen3> createState() => _SignupScreen3State();
}

class _SignupScreen3State extends State<SignupScreen3> {
  SignUpController _signUpController = Get.find();
  List<String> Intrest = <String>[
    'Out doorgame',
    'In doorgame',
    'Dancing',
    'Camping',
    'Traviling',
    'Music',
    'Other',
  ];

  List<String> Physical_disability = <String>[
    'Yes',
    'No',
  ];

  String Intrestdrop = 'Dancing';

  String Physicaldrop = 'No';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _signUpController.signup3FormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              2.h.heightBox,
              Center(
                  child: Lottie.asset("lib/assets/images/sinani.json",
                      fit: BoxFit.fill, height: 20.h, width: 50.w)),
              Center(
                child: Image.asset("lib/assets/images/move3.png"),
              ),
              2.h.heightBox,
              FormTextField(
                controller: _signUpController.designation,
                hint: "",
                inputName: "Designation",
              ),
              2.h.heightBox,
              FormTextField(
                controller: _signUpController.hobby,
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
                padding: EdgeInsets.all(5),
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
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey,
                    ),
                    value: Intrestdrop,
                    isExpanded: true,
                    items:
                        Intrest.map<DropdownMenuItem<String>>((String Value) {
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
                "Physical disability",
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
                        Physicaldrop = newValue!;
                      });
                    },
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey,
                    ),
                    value: Physicaldrop,
                    isExpanded: true,
                    items: Physical_disability.map<DropdownMenuItem<String>>(
                        (String Value) {
                      return DropdownMenuItem<String>(
                        value: Value,
                        child: Text(Value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              4.h.heightBox,
              InkWell(
                onTap: () {
                  // Get.to(CreateAccount());
                  _signUpController.signupForm();
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
                  ),
                ),
              ),
              4.h.heightBox,
            ],
          ).pSymmetric(h: 4.h),
        ),
      ),
    );
  }
}
