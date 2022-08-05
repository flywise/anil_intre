import 'package:community/View/matrimonial/matrimonial_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../constant/constant.dart';
import '../widgets/form_text_field.dart';
import 'matrimonial_post_controller.dart';

class MatrimonialEdit extends StatefulWidget {
  MatrimonialEdit({Key? key}) : super(key: key);

  @override
  State<MatrimonialEdit> createState() => _MatrimonialEditState();
}

class _MatrimonialEditState extends State<MatrimonialEdit> {
  MatrimonialPostController matrimonialPostController =
      Get.put(MatrimonialPostController());

  List<String> Gender = <String>[
    'Male',
    'Female',
    'Other',
  ];

  String Genderdrop = "Male";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff741CE5),
        title: Text("Metrimonial"),
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
          Center(
            child: CircleAvatar(
                radius: (50),
                backgroundColor: Colors.grey,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("lib/assets/images/propic2.png"),
                )),
          ),
          FormTextField(
            hint: "Name",
            inputName: "Full name",
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
          FormTextField(
            hint: "25",
            inputName: "Age",
          ),
          2.h.heightBox,
          2.h.heightBox,
          Text(
            "Description",
            style: text6,
          ),
          SizedBox(
            height: 1.h,
          ),
          Container(
            height: 12.h,
            width: 100.w,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(15)),
            child: TextField(
              maxLines: 10,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide.none),
                hintText:
                    "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without",
              ),
            ),
          ),
          4.h.heightBox,
          Center(
            child: Container(
              height: 5.h,
              width: 35.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: black,
              ),
              child: Center(
                child: Text(
                  "SAVE",
                  style: text2,
                ),
              ),
            ).onTap(() {
              Get.to(() => MatrimonialScreen());
            }),
          ),
        ],
      ).pSymmetric(h: 4.h),
    );
  }
}
