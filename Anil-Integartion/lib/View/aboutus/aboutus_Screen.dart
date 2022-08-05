import 'package:community/View/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class AboutScreen extends StatefulWidget {
  AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff741CE5),
        title: Text("About us"),
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          1.h.heightBox,
          Text(
            "What is community app",
            style: text7,
          ),
          1.h.heightBox,
          Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit vulputate curabitur bibendum quam hac ultricies vel, imperdiet. Elementum proin tempor, ornare laoreet. Arcu accumsan, et, amet magna nullam lorem sit egestas. Egestas mollis viverra vel vel. Scelerisque rutrum fermentum facilisi sed rhoncus. Congue montes, id sit accumsan nunc semper. Purus fringilla viverra neque ullamcorper fames."),
          Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit vulputate curabitur bibendum quam hac ultricies vel, imperdiet. Elementum proin tempor, ornare laoreet. Arcu accumsan, et, amet magna nullam lorem sit egestas. Egestas mollis viverra vel vel. Scelerisque rutrum fermentum facilisi sed rhoncus. Congue montes, id sit accumsan nunc semper. Purus fringilla viverra neque ullamcorper fames."),
          Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit vulputate curabitur bibendum quam hac ultricies vel, imperdiet. Elementum proin tempor, ornare laoreet. Arcu accumsan, et, amet magna nullam lorem sit egestas. Egestas mollis viverra vel vel. Scelerisque rutrum fermentum facilisi sed rhoncus. Congue montes, id sit accumsan nunc semper. Purus fringilla viverra neque ullamcorper fames.")
        ],
      ).pSymmetric(h: 2.h),
    );
  }
}
