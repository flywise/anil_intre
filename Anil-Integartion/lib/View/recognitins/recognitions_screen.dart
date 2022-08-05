import 'package:community/View/constant/constant.dart';
import 'package:community/View/recognitins/recognitins1.dart';
import 'package:community/View/recognitins/recognitins2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class RecognitionsScreen extends StatefulWidget {
  RecognitionsScreen({Key? key}) : super(key: key);

  @override
  State<RecognitionsScreen> createState() => _RecognitionsScreenState();
}

class _RecognitionsScreenState extends State<RecognitionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff741CE5),
        title: Text("Recognitions"),
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
            GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 6,
                  childAspectRatio: 4 / 2,
                  mainAxisSpacing: 12,
                  mainAxisExtent: 185,
                ),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                              height: 21.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.sp),
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "lib/assets/images/reco1.png",
                                    fit: BoxFit.fill,
                                  ),
                                  Container(
                                    height: 9.h,
                                    width: 40.w,
                                    decoration: BoxDecoration(
                                        color: Color(0xffD9D9D9),
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10.sp),
                                          bottomRight: Radius.circular(10.sp),
                                        )),
                                  )
                                ],
                              )),
                          Positioned(
                            top: 12.h,
                            left: 2.w,
                            child: Column(
                              children: [
                                Text(
                                  "Ankita Chauhan",
                                  style: text7,
                                ),
                                Row(
                                  children: [
                                    Text("UPSC"),
                                    2.w.widthBox,
                                    Text(
                                      "Rank 1",
                                      style: TextStyle(color: Colors.red),
                                    )
                                  ],
                                ),
                                0.5.h.heightBox,
                                Text("New Delhi")
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  );
                }).onTap(() {
              Get.to(() => Recognitins2());
            })
          ],
        ).pSymmetric(h: 3.h),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(() => Recognitins1());
          },
          backgroundColor: Color(0xff702DC7),
          child: const Icon(Icons.add)),
    );
  }
}
