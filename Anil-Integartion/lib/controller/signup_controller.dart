import 'dart:io';

import 'package:community/config/provider/signup1_provider.dart';
import 'package:community/config/server.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'country_data_controller.dart';

class SignUpController extends GetxController {
  CountryDataController countryDataController =
      Get.put(CountryDataController());

  final signup1FormKey = GlobalKey<FormState>();
  final signup2FormKey = GlobalKey<FormState>();
  final signup3FormKey = GlobalKey<FormState>();

  final fname = TextEditingController();
  final country = TextEditingController();
  final state = TextEditingController();
  final district = TextEditingController();

  final town = TextEditingController();
  final village = TextEditingController();

  final pincode = TextEditingController();
  final mobile = TextEditingController();
  DateTime dateOfBirth = DateTime.now();
  final emergencyContact = TextEditingController();
  TextEditingController gender = TextEditingController();

  final maritialStatus = TextEditingController();
  final bloodGroup = TextEditingController();

  final education = TextEditingController();
  final profession = TextEditingController();

  final company = TextEditingController();
  final designation = TextEditingController();

  final hobby = TextEditingController();
  final interest = TextEditingController();

  final physicalDisability = TextEditingController();

  RxBool isLoading = true.obs;

  Rx<File> image = File("").obs;

  Rx<String?> selectedType = Rxn<String>();

  List<String> Martial = ["Married", "Single", "widowed", "divorced"];

  void showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: Wrap(
                children: <Widget>[
                  ListTile(
                      leading: const Icon(Icons.photo_library),
                      title: Text('Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  ListTile(
                    leading: const Icon(Icons.photo_camera),
                    title: Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  _imgFromCamera() async {
    ImagePicker _picker = ImagePicker();
    XFile? tempImage = await _picker.pickImage(
        source: ImageSource.camera,
        //  imageQuality: 50,
        preferredCameraDevice: CameraDevice.front);
    if (tempImage != null) {
      image.value = File(tempImage.path);
    }
  }

  _imgFromGallery() async {
    ImagePicker _picker = ImagePicker();
    XFile? tempImage = await _picker.pickImage(
      source: ImageSource.gallery,
      //imageQuality: 50
    );
    if (tempImage != null) {
      image.value = File(tempImage.path);
    }
  }

  signupForm() {
    Client register = Client();
    SignupProvider authPoint = SignupProvider(client: register.init());
    authPoint.submitForm(
      fname.text,
      country.text,
      state.text,
      district.text,
      town.text,
      village.text,
      pincode.text,
      emergencyContact.text,
      mobile.text,
      dateOfBirth,
      gender.text,
      company.text,
      selectedType.value.toString(),
      bloodGroup.text,
      education.text,
      designation.text,
      profession.text,
      hobby.text,
      interest.text,
      physicalDisability.text,
      image.value,
    );
  }

  // @override
  // void onInit() {
  //   // countryDataController.callGetCountryData();
  //   // callGetCountryData();
  //   // RxString Countrydrop = 'Afghanistan'.obs;

  //   super.onInit();
  // }
}
