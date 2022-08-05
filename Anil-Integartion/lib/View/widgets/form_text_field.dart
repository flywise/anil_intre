import 'package:community/View/constant/constant.dart';
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

class FormTextField extends StatelessWidget {
  String? inputName;
  String? hint;
  final TextEditingController? controller;
  FormTextField({
    this.inputName,
    this.hint,
    this.controller,
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
            style: text6,
          ),
          SizedBox(
            height: 1.h,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10)),
            child: TextFormField(
              controller: controller,
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
