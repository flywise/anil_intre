import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BackAssets extends StatelessWidget {
  var child;
  BackAssets({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
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
            Positioned(
              top: 65.h,
              left: -3.h,
              right: -10.h,
              child: Container(
                width: 100.w,
                height: 50.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          "lib/assets/images/asset2.png",
                        ))),
              ),
            ),
            Container(
              height: 100.h,
              color: Colors.black.withOpacity(0.5),
            ),
            child
          ],
        ),
      ),
    );
  }
}
