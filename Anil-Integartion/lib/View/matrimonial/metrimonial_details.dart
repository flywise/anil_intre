import 'package:community/View/chat/chat.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../constant/constant.dart';

class MetrimonialDetails extends StatefulWidget {
  MetrimonialDetails({Key? key}) : super(key: key);

  @override
  State<MetrimonialDetails> createState() => _MetrimonialDetailsState();
}

class _MetrimonialDetailsState extends State<MetrimonialDetails> {
  List<String> images = [
    "lib/assets/images/metdetailspic.png",
    "lib/assets/images/metdetailspic.png",
  ];

  int currtpage = 0;
  PageController? _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);

    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

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
        title: Text("Metrimonial"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: 38.h,
              width: 80.w,
              child: PageView.builder(
                controller: _controller,
                itemCount: images.length,
                onPageChanged: (int index) {
                  setState(() {
                    currtpage = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Container(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Container(
                            height: 32.h,
                            width: 80.w,
                            child: Image.asset(
                              images[i],
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  images.length, (index) => buildDot(index, context))),
          Text(
            "Amber Heard  25",
            style: text7,
          ),
          2.h.heightBox,
          Text(
            "Description",
            style: text6,
          ),
          Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis neque, id neque scelerisque eu blandit quam amet. Varius sit urna tortor vitae. Neque sed eget leo, maecenas orci non magna et. Cursus fusce ultrices felis enim mauris gravida facilisi nibh."),
          Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis neque, id neque scelerisque eu blandit quam amet. Varius sit urna tortor vitae. Neque sed eget leo, maecenas orci non magna et. Cursus fusce ultrices felis enim mauris gravida facilisi nibh."),
          4.h.heightBox,
          Center(
            child: Container(
              height: 6.h,
              width: 40.w,
              decoration: BoxDecoration(
                  color: Color(0xff29A5EB),
                  borderRadius: BorderRadius.circular(20.sp)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.white,
                  ),
                  4.w.widthBox,
                  Text(
                    "Chat now",
                    style: text2,
                  ),
                ],
              ),
            ).onTap(() {
              Get.to(() => Chat());
            }),
          ),
        ],
      ).pSymmetric(h: 2.h),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 2.h,
      width: currtpage == index ? 15 : 15,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: currtpage == index ? Colors.black : Color(0xff979797),
      ),
    );
  }
}
