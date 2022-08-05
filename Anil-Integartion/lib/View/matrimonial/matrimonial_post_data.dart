import 'package:community/View/matrimonial/matrimonial_post_controller.dart';
import 'package:community/View/matrimonial/matrimonial_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../constant/constant.dart';
import '../widgets/form_text_field.dart';

class MetrimonialPostData extends StatefulWidget {
  MetrimonialPostData({Key? key}) : super(key: key);

  @override
  State<MetrimonialPostData> createState() => _MetrimonialPostDataState();
}

class _MetrimonialPostDataState extends State<MetrimonialPostData> {
  MatrimonialPostController matrimonialPostController =
      Get.put(MatrimonialPostController());

  List<String> Gender = <String>[
    'Male',
    'Female',
  ];

  String Genderdrop = "Male";
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            2.h.heightBox,
            Obx(() => Center(
                  child: Container(
                          height: 15.h,
                          width: 25.w,
                          child: matrimonialPostController.image.value.path ==
                                  ""
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
                                        matrimonialPostController.image.value),
                                  )))
                      .onTap(() async {
                    matrimonialPostController.pickImage(ImageSource.gallery);
                  }),
                )),
            FormTextField(
              hint: "",
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
            FormTextField(
              hint: "",
              inputName: "Age",
            ),
            2.h.heightBox,
            FormTextField(
              hint: "",
              inputName: "Mobile Number",
            ),
            2.h.heightBox,
            FormTextField(
              hint: "",
              inputName: "Location",
            ),
            2.h.heightBox,
            Text(
              "Upload biodata",
              style: text6,
            ),
            1.h.heightBox,
            Obx(
              () => Container(
                      height: 12.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(15)),
                      child: matrimonialPostController.image2.value.path == ""
                          ? Icon(
                              Icons.upload,
                              size: 40.sp,
                            )
                          : Container(
                              height: 10.h,
                              width: 80.w,
                              child: Image.file(
                                  fit: BoxFit.contain,
                                  matrimonialPostController.image2.value),
                            ))
                  .onTap(() async {
                matrimonialPostController.pickImage2(ImageSource.gallery);
              }),
            ),
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
                  hintText: "",
                ),
              ),
            ),
            5.h.heightBox,
            Center(
              child: Container(
                height: 5.h,
                width: 35.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff741CE5),
                ),
                child: Center(
                  child: Text(
                    "Post",
                    style: text2,
                  ),
                ),
              ),
            ).onTap(() {
              Get.to(() => MatrimonialScreen());
            }),
            4.h.heightBox,
          ],
        ).pSymmetric(h: 4.h),
      ),
    );
  }
}
