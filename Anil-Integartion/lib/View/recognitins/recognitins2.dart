import 'package:community/View/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class Recognitins2 extends StatefulWidget {
  Recognitins2({Key? key}) : super(key: key);

  @override
  State<Recognitins2> createState() => _Recognitins2State();
}

class _Recognitins2State extends State<Recognitins2> {
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          2.h.heightBox,
          Align(
              alignment: Alignment.topRight,
              child: InkWell(
                  onTap: () {
                    _onshare(context);
                  },
                  child: Image.asset("lib/assets/images/rshare.png"))),
          Center(
            child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.grey,
                child: Image.asset(
                  "lib/assets/images/propic2.png",
                  fit: BoxFit.fill,
                )),
          ),
          2.h.heightBox,
          Text(
            "Ankita Chauhan",
            style: text6,
          ).centered(),
          2.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Achievement",
                style: text7,
              ),
              Text(
                "Locationt",
                style: text7,
              )
            ],
          ),
          1.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "UPSC Rank 1",
                style: text6,
              ),
              Text(
                "New Delhi",
                style: text6,
              )
            ],
          ),
          2.h.heightBox,
          Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Adipiscing maecenas integer sagittis suspendisse et, odio. Nulla varius ut nisl mauris vel diam tincidunt ultricies justo. Mauris accumsan sit tortor imperdiet massa scelerisque."),
          Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Adipiscing maecenas integer sagittis suspendisse et, odio. Nulla varius ut nisl mauris vel diam tincidunt ultricies justo. Mauris accumsan sit tortor imperdiet massa scelerisque.")
        ],
      ).pSymmetric(h: 2.h),
    );
  }

  void _onshare(BuildContext context) async {
    Share.share('Share Data');
  }
}
