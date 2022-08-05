import 'package:community/View/constant/constant.dart';
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

class JobFormField extends StatelessWidget {
  String? inputName;
  String? hint;
  JobFormField({
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
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide.none),
                hintText: "$hint",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
