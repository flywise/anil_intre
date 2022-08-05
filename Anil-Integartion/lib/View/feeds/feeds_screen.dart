import 'package:community/View/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class FeedsScreen extends StatefulWidget {
  FeedsScreen({Key? key}) : super(key: key);

  @override
  State<FeedsScreen> createState() => _FeedsScreenState();
}

class _FeedsScreenState extends State<FeedsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 100.h,
                  width: 100.w,
                  child: Image.asset(
                    "lib/assets/images/fe1.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  left: 70.w,
                  top: 40.h,
                  child: Container(
                    height: 30.h,
                    width: 40.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.white,
                          size: 30.sp,
                        ),
                        2.h.heightBox,
                        Icon(
                          Icons.chat_bubble_outline,
                          color: Colors.white,
                          size: 30.sp,
                        ),
                        2.h.heightBox,
                        Icon(
                          Icons.send_outlined,
                          color: Colors.white,
                          size: 30.sp,
                        ).onTap(() {
                          _onshare(context);
                        }),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 90.h,
                  left: 5.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: 5.h,
                              width: 10.w,
                              child: Image.asset(
                                "lib/assets/images/propic2.png",
                                fit: BoxFit.fill,
                              )),
                          4.w.widthBox,
                          Text(
                            "Liza",
                            style: text3,
                          ),
                        ],
                      ),
                      0.5.h.heightBox,
                      Text(
                        "This is our farming",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 93.h,
                  left: 45.w,
                  child: Center(
                    child: Image.asset("lib/assets/images/postf.png"),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void _onshare(BuildContext context) async {
    Share.share('Share Data');
  }
}
