import 'package:community/View/constant/constant.dart';
import 'package:community/View/widgets/form_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class IdCard extends StatelessWidget {
  const IdCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff741CE5),
        title: Text("Member ID card"),
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: Column(
        children: [
          4.h.heightBox,
          Center(child: Image.asset("lib/assets/images/propic2.png")),
          2.h.heightBox,
          FormTextField(
            hint: "John Doe",
            inputName: "Full Name",
          ),
          2.h.heightBox,
          FormTextField(
            hint: "90XX458214",
            inputName: "Mobile Number",
          ),
          2.h.heightBox,
          FormTextField(
            hint: "ABLK[0000000]",
            inputName: "Membership number",
          ),
          10.h.heightBox,
        ],
      ).pSymmetric(h: 4.h),
    );
  }
}
