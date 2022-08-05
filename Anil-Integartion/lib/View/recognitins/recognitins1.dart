import 'package:community/View/recognitins/recognitions_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../constant/constant.dart';
import '../matrimonial/matrimonial_post_controller.dart';
import '../widgets/form_text_field.dart';

class Recognitins1 extends StatefulWidget {
  Recognitins1({Key? key}) : super(key: key);

  @override
  State<Recognitins1> createState() => _Recognitins1State();
}

class _Recognitins1State extends State<Recognitins1> {
  MatrimonialPostController matrimonialPostController =
      Get.put(MatrimonialPostController());
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
                          child: matrimonialPostController.image3.value.path ==
                                  ""
                              ? CircleAvatar(
                                  radius: (20),
                                  backgroundColor: Colors.grey,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Icon(
                                        Icons.add_circle_outline_outlined,
                                        color: Colors.black,
                                        size: 25.sp,
                                      )))
                              : CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.transparent,
                                  child: ClipOval(
                                    // borderRadius: BorderRadius.circular(20),
                                    child: Image.file(
                                        fit: BoxFit.fill,
                                        matrimonialPostController.image3.value),
                                  )))
                      .onTap(() async {
                    matrimonialPostController.pickImage3(ImageSource.gallery);
                  }),
                )),
            2.h.heightBox,
            FormTextField(
              hint: "",
              inputName: "Full name",
            ),
            2.h.heightBox,
            2.h.heightBox,
            FormTextField(
              hint: "",
              inputName: "Location",
            ),
            2.h.heightBox,
            FormTextField(
              hint: "",
              inputName: "Achievemnt",
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
              ).onTap(() {
                Get.to(() => RecognitionsScreen());
              }),
            ),
            4.h.heightBox,
          ],
        ).pSymmetric(h: 4.h),
      ),
    );
  }
}
