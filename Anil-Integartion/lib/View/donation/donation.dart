import 'package:community/View/constant/constant.dart';
import 'package:community/View/widgets/job_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class DonationScreen extends StatefulWidget {
  DonationScreen({Key? key}) : super(key: key);

  @override
  State<DonationScreen> createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 30.h,
            width: 100.w,
            child: Image.asset(
              "lib/assets/images/donationimg.png",
              fit: BoxFit.fill,
            ),
          ),
          2.h.heightBox,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Donation",
                style: text7,
              ),
              1.h.heightBox,
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna velit consequat diam fusce interdum lobortis sit aliquam. Dolor, enim duis nec at nunc. Ut justo duis massa sit nunc. Scelerisque duis faucibus sollicitudin cursus venenatis."),
              2.h.heightBox,
              JobFormField(
                hint: "",
                inputName: "Enter Amount",
              ),
              2.h.heightBox,
              Text(
                "Description",
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
                ),
                child: TextField(
                  maxLines: 10,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    hintText: "",
                  ),
                ),
              ),
              3.h.heightBox,
              Center(
                child: Container(
                  height: 5.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                      color: Color(0xff891F08),
                      borderRadius: BorderRadius.circular(20.sp)),
                  child: InkWell(
                    onTap: () {
                      // showDialogFunc(
                      //   context,
                      // );
                      AnimatedDialog(context);
                    },
                    child: Center(
                      child: Text(
                        "Donate",
                        style: text2,
                      ),
                    ),
                  ),
                ),
              ),
              3.h.heightBox,
              Center(
                child: Container(
                  height: 5.h,
                  width: 70.w,
                  decoration: BoxDecoration(
                      color: Color(0xffD9DD17),
                      borderRadius: BorderRadius.circular(20.sp)),
                  child: InkWell(
                    onTap: () {
                      _BottomSheet(context);
                    },
                    child: Center(
                      child: Row(
                        children: [
                          3.w.widthBox,
                          Icon(Icons.access_time_rounded),
                          4.w.widthBox,
                          Text(
                            "Show donation history ",
                            style: text7,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ).pSymmetric(h: 2.h),
        ],
      ),
    );
  }

  Future<Object?> AnimatedDialog(BuildContext context) {
    return showAnimatedDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(15),
              width: 90.w,
              height: 67.h,
              child: Column(
                children: [
                  Container(
                    height: 7.5.h,
                    width: 15.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xffEA5252)),
                    child: Center(child: Text("LOGO")),
                  ),
                  1.h.heightBox,
                  Text(
                    "Donation Reciept",
                    style: text6,
                  ),
                  3.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Reciept number",
                        style: text7,
                      ),
                      Text(
                        "ABLKMXXX",
                        style: text8,
                      ),
                    ],
                  ),
                  1.h.heightBox,
                  Container(
                    height: 0.7,
                    width: 90.w,
                    color: Colors.black,
                  ),
                  1.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Name",
                        style: text7,
                      ),
                      Text(
                        "username",
                        style: text8,
                      ),
                    ],
                  ),
                  1.h.heightBox,
                  Container(
                    height: 0.7,
                    width: 90.w,
                    color: Colors.black,
                  ),
                  1.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Place",
                        style: text7,
                      ),
                      Text(
                        "New Delhi",
                        style: text8,
                      ),
                    ],
                  ),
                  1.h.heightBox,
                  Container(
                    height: 0.7,
                    width: 90.w,
                    color: Colors.black,
                  ),
                  1.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Amount",
                        style: text7,
                      ),
                      Text(
                        "5000",
                        style: text8,
                      ),
                    ],
                  ),
                  1.h.heightBox,
                  Container(
                    height: 0.7,
                    width: 90.w,
                    color: Colors.black,
                  ),
                  1.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Date",
                        style: text7,
                      ),
                      Text(
                        "9-6-22",
                        style: text8,
                      ),
                    ],
                  ),
                  1.h.heightBox,
                  Container(
                    height: 0.7,
                    width: 90.w,
                    color: Colors.black,
                  ),
                  1.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Time",
                        style: text7,
                      ),
                      Text(
                        "12:8  PM",
                        style: text8,
                      ),
                    ],
                  ),
                  1.h.heightBox,
                  Container(
                    height: 0.7,
                    width: 90.w,
                    color: Colors.black,
                  ),
                  1.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Purpose",
                        style: text7,
                      ),
                      Text(
                        "Welfare",
                        style: text8,
                      ),
                    ],
                  ),
                  1.h.heightBox,
                  Container(
                    height: 0.7,
                    width: 90.w,
                    color: Colors.black,
                  ),
                  1.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Payment mode",
                        style: text7,
                      ),
                      Text(
                        "Paytm",
                        style: text8,
                      ),
                    ],
                  ),
                  1.h.heightBox,
                  Container(
                    height: 0.7,
                    width: 90.w,
                    color: Colors.black,
                  ),
                  3.h.heightBox,
                  Center(
                    child: Container(
                      height: 6.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                          color: Color(0xff8948DF),
                          borderRadius: BorderRadius.circular(10.sp)),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.file_download_outlined),
                              5.w.widthBox,
                              Text(
                                "Download Reciept",
                                style: text2,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      animationType: DialogTransitionType.rotate3D,
      duration: Duration(seconds: 1),
    );
  }

  void _BottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
              padding: EdgeInsets.all(20),
              height: 40.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 5.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(10.sp)),
                    child: Row(children: [
                      Text(
                        "History",
                        style: text6,
                      ),
                      Spacer(),
                      Container(
                        height: 4.h,
                        width: 35.w,
                        decoration: BoxDecoration(
                            color: Color(0xff651AC8).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20.sp)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.remove_red_eye_outlined),
                            3.w.widthBox,
                            Text("Hide identity")
                          ],
                        ),
                      )
                    ]).pSymmetric(h: 2.h),
                  ),
                  3.h.heightBox,
                  Expanded(
                    child: ListView.builder(
                        itemCount: 9,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Donor name",
                                  style: text6,
                                ),
                                Text(
                                  "New Delhi",
                                  style: text7,
                                ),
                                Text(
                                  "5000",
                                  style: text7,
                                )
                              ],
                            ),
                          );
                        }),
                  )
                ],
              ));
        });
  }
}
