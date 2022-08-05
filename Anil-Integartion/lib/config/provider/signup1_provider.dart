import 'dart:io';

import 'package:community/View/home/home_screen.dart';
import 'package:community/View/user/create_account.dart';
import 'package:community/View/user/otp_screen.dart';

import 'package:community/utils/common_loder.dart';
import 'package:dio/dio.dart';

import 'package:get/get.dart ' as g;
import 'package:http_parser/http_parser.dart';
import 'package:mime_type/mime_type.dart';

class SignupProvider {
  Dio client;

  SignupProvider({
    required this.client,
  });

  submitForm(
    String fullName,
    String country,
    String state,
    String district,
    String town,
    String village,
    String pincode,
    String emergencyContact,
    String mobile,
    DateTime dateOfBirth,
    String gender,
    String company,
    String maritialStatus,
    String bloodGroup,
    String education,
    String designation,
    String profession,
    String hobby,
    String interest,
    String physicalDisability,
    File profile,
  ) async {
    CommonLoader.showLoading();

    String mimeType = mime(profile.path)!;
    String mimee = mimeType.split('/')[0];
    String type = mimeType.split('/')[1];

    var data = FormData.fromMap({
      'fullName': fullName,
      'country': country,
      'state': state,
      'district': district,
      'town': town,
      'village': village,
      'pincode': pincode,
      'emergencyContact': emergencyContact,
      'mobile': mobile,
      'dateOfBirth': dateOfBirth,
      'gender': gender,
      'maritialStatus': maritialStatus,
      'bloodGroup': bloodGroup,
      'education': education,
      'designation': designation,
      'hobby': hobby,
      'profession': profession,
      'interest': interest,
      'company': company,
      'physicalDisability': physicalDisability,
      "profile": await MultipartFile.fromFile(profile.path,
          filename: "profile.png", contentType: MediaType(mimee, type))

      // // 'imagePath': await MultipartFile.fromFile(
      // //   profileImage,
      // ),
    });
    try {
      Response r = await client.post("/api/users/presave", data: data);
      CommonLoader.hideLoading();
      if (r.statusCode == 200) {
        print('Inserted  sucessfully');
        print(r.data);
        // CommonLoader.showSuccessDialog();
        g.Get.to(() => CreateAccount());
      } else {
        CommonLoader.hideLoading();
        return Future.error(r.data["error"]);
      }
    } on DioError catch (e) {
      //hide loading
      //show error dialog
      CommonLoader.hideLoading();
      CommonLoader.showErrorDialog(description: e.message);
    }
  }
}
