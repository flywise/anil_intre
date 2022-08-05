import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OtpInput extends StatelessWidget {
  OtpInput({
    required this.autoFocus,
    this.controller,
    this.validator,
    Key? key,
  }) : super(key: key);
  final bool autoFocus;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 5.h,
        width: 12.w,
        child: Container(
          height: 9.h,
          width: 13.w,
          decoration: BoxDecoration(
              color: Color(0xffD9D9D9),
              borderRadius: BorderRadius.circular(5.sp)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: controller,
              validator: validator,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 8),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                hintText: '',
                hintStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                counterText: '',
                focusColor: Colors.black,
              ),
              autofocus: autoFocus,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              // controller: controller,
              maxLength: 1,
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
