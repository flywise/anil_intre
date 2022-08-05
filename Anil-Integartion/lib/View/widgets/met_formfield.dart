import 'package:community/View/constant/constant.dart';
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class MetFormField extends StatelessWidget {
  String? inputName;
  String? hint;
  MetFormField({
    this.inputName,
    this.hint,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$inputName",
            style: text7,
          ),
          SizedBox(
            height: 1.h,
          ),
          Container(
            height: 5.h,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(15)),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  hintText: "$hint",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 1.sp)),
            ).pSymmetric(v: 3.h),
          ),
        ],
      ),
    );
  }
}
