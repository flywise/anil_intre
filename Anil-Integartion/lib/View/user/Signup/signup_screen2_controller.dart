import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


import 'dart:io';

import 'package:image_picker/image_picker.dart';






class EditProfileController extends GetxController {
  RxBool isLoading = true.obs;
  GlobalKey<FormState> userform = GlobalKey();


  Rx<File> image = File("").obs;
  void pickImage(ImageSource imageSource) async {

    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        image.value = File(pickedFile.path);
      } else {
        print('No image selected.');
      }

  }



  // void callEditProfileApi() async {
  //   http.Response r = await ApiProvider.editProfileApi(name.text,mobile.text,email.text,image.value.path);
  //   if(r.statusCode==200){
  //     Get.to(()=> SavedProfile());
  //   }
  // }

  //from here add member and add patient both ccontroller function ..............

  TextEditingController name = TextEditingController();
  TextEditingController location = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobile = TextEditingController();



  //................................

  @override
  void onInit() {
   
  }

  

  
  


}