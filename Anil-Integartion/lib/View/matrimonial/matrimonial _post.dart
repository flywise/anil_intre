import 'package:community/View/constant/constant.dart';
import 'package:community/View/matrimonial/matrimonial_controller.dart';
import 'package:community/View/matrimonial/matrimonial_screen.dart';
import 'package:community/View/profile/profile_screen.dart';
import 'package:community/View/widgets/form_text_field.dart';
import 'package:community/View/widgets/job_form_field.dart';
import 'package:community/View/widgets/met_formfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class MatrimonialPost extends StatefulWidget {
  MatrimonialPost({Key? key}) : super(key: key);

  @override
  State<MatrimonialPost> createState() => _MatrimonialPostState();
}

class _MatrimonialPostState extends State<MatrimonialPost> {
  MetrimonialController metrimonialController =
      Get.put(MetrimonialController());
  List<String> Gender = <String>[
    'Male',
    'Female',
    'Other',
  ];
  String Genderdrop = 'Male';
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elit lorem tortor mauris tempor porta semper. Augue egestas in bibendum aenean consequat quam tortor ipsum."),
            2.h.heightBox,
            MetFormField(
              hint: "",
              inputName: "Name",
            ),
            2.h.heightBox,
            MetFormField(
              hint: "",
              inputName: "Age",
            ),
            2.h.heightBox,
            Text(
              "Gender",
              style: text7,
            ),
            1.h.heightBox,
            Container(
              padding: EdgeInsets.all(5),
              height: 5.h,
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(15)),
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
            MetFormField(
              hint: "",
              inputName: "Qualification",
            ),
            2.h.heightBox,
            MetFormField(
              hint: "",
              inputName: "State",
            ),
            2.h.heightBox,
            MetFormField(
              hint: "",
              inputName: "District",
            ),
            2.h.heightBox,
            MetFormField(
              hint: "",
              inputName: "Contact no.",
            ),
            2.h.heightBox,
            Text(
              "Upload  photos",
              style: text7,
            ),
            2.h.heightBox,
            Obx(
              () => Container(
                      height: 12.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(15)),
                      child: metrimonialController.image.value.path == ""
                          ? Icon(
                              Icons.upload,
                              size: 40.sp,
                            )
                          : Image.file(
                              fit: BoxFit.fill,
                              metrimonialController.image.value))
                  .onTap(() async {
                metrimonialController.pickImage(ImageSource.gallery);
              }),
            ),
            2.h.heightBox,
            Text(
              "Remarks",
              style: text7,
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
                  hintText: "",
                ),
              ),
            ),
            5.h.heightBox,
            Center(
              child: Container(
                height: 5.h,
                width: 40.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: black,
                ),
                child: Center(
                  child: Text(
                    "Update",
                    style: text2,
                  ),
                ),
              ).onTap(() {
                Get.to(() => ProfileScreen());
              }),
            ),
            4.h.heightBox,
          ],
        ).pSymmetric(h: 2.h, v: 2.h),
      ),
    );
  }
}
