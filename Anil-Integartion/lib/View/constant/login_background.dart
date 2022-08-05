import 'package:community/View/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LoginBackground extends StatelessWidget {
  var child;
  LoginBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff9D73D3),
      child: Stack(
        children: [
          Positioned(
            top: -30.h,
            left: -10.h,
            right: -10.h,
            child: Container(
              width: 100.w,
              height: 80.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        "lib/assets/images/asset3.png",
                      ))),
            ),
          ),
          Container(
            height: 80.h,
            color: Colors.black.withOpacity(0.5),
          ),
          Positioned(
            top: 50.h,
            left: -3.h,
            right: -10.h,
            child: Container(
              width: 100.w,
              height: 50.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        "lib/assets/images/asset4.png",
                      ))),
            ),
          ),
          child
        ],
      ),
    );
  }
}
