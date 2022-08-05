import 'package:community/View/constant/constant.dart';
import 'package:community/View/user/Signup/signup_screen2.dart';
import 'package:community/View/widgets/form_text_field.dart';
import 'package:community/controller/country_data_controller.dart';
import 'package:community/controller/signup_controller.dart';

import 'package:csc_picker/csc_picker.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  SignUpController _signUpController = Get.put(SignUpController());

  CountryDataController countryDataController =
      Get.put(CountryDataController());

  List<String> Country = <String>[
    'Afghanistan',
    'Albania',
    'Contact number not reachable',
    'Algeria',
    'Andorra',
    'Australia',
    'India'
  ];
  List<String> State = <String>[
    'Andhra Pradesh',
    'Arunachal Pradesh',
    'Assam',
    'Bihar',
    'Chhattisgarh',
    'Goa',
    'Gujarat'
  ];
  List<String> District = <String>[
    'Anjaw',
    'Changlang',
    'Dibang Valley',
    'East Kameng',
    'East Siang',
    'Itanagar',
    'Kra Daadi'
  ];
  List countrydata = [];

  String countryValue = "";
  String stateValue = "";
  String cityValue = "";
  String address = "";

  String Statedrop = 'Arunachal Pradesh';
  String Districdrop = 'Anjaw';
  String con = "india";

  String country = "Afghanistan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            2.h.heightBox,
            Center(
                child: Lottie.asset("lib/assets/images/sinani.json",
                    fit: BoxFit.fill, height: 20.h, width: 50.w)),
            Center(
              child: Image.asset("lib/assets/images/move1.png"),
            ),
            2.h.heightBox,
            Form(
                key: _signUpController.signup1FormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FormTextField(
                      controller: _signUpController.fname,
                      hint: "",
                      inputName: "Full name",
                    ),
                    2.h.heightBox,

                    CSCPicker(
                      showStates: true,

                      showCities: true,

                      flagState: CountryFlag.DISABLE,

                      dropdownDecoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.sp)),
                          color: Colors.white,
                          border: Border.all(color: Colors.grey, width: 2)),

                      disabledDropdownDecoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.grey.shade300,
                          border: Border.all(
                              color: Colors.grey.shade300, width: 1)),
                          

                      countrySearchPlaceholder: "country",
                      stateSearchPlaceholder: "State",
                      citySearchPlaceholder: "City",

                      countryDropdownLabel: "*country",
                      stateDropdownLabel: "*State",
                      cityDropdownLabel: "*City",

                      selectedItemStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),

                      dropdownHeadingStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),

                      dropdownItemStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),

                      dropdownDialogRadius: 10.0,

                      searchBarRadius: 10.0,

                      onCountryChanged: (value) {
                     
                        setState(() {
                          countryValue = value.toString();
                        });
                      },

                      ///triggers once state selected in dropdown
                      onStateChanged: (value) {
                    
                        setState(() {
                          ///store value in state variable
                          stateValue = value.toString();
                        });
                      },

                      ///triggers once city selected in dropdown
                      onCityChanged: (value) {
                        setState(() {
                          ///store value in city variable
                          cityValue = value.toString();
                        });
                      },
                    ),
                    // TextButton(
                    //     onPressed: () {
                    //       setState(() {
                    //         address = "$cityValue, $stateValue, $countryValue";
                    //       });
                    //     },
                    //     child: Text(
                    //       "",
                    //       style: text6,
                    //     )),

                    // Obx(() {
                    //   // log("countyryy ${countryDataController.countryList}");
                    //   return Container(
                    //       padding: EdgeInsets.all(5),
                    //       decoration: BoxDecoration(
                    //           border: Border.all(),
                    //           borderRadius: BorderRadius.circular(10)),
                    //       child: DropdownButtonHideUnderline(
                    //         child: DropdownButton(
                    //           onChanged: (newValue) {
                    //             countryDataController
                    //                 .setSelected(newValue as String);
                    //             countryDataController.update();
                    //             print(newValue);
                    //           },
                    //           icon: Icon(
                    //             Icons.keyboard_arrow_down,
                    //             color: Colors.grey,
                    //           ),
                    //           value: countryDataController.selected.value,
                    //           isExpanded: true,
                    //           items: countryDataController.countryList
                    //               .map((Value) {
                    //             return DropdownMenuItem(
                    //               value: Value.name,
                    //               child: Text(Value.name + "" + Value.code),
                    //             );
                    //           }).toList(),
                    //         ),
                    //       ));
                    // }),
                    // 2.h.heightBox,
                    // Text(
                    //   "State",
                    //   style: text6,
                    // ),
                    // 1.h.heightBox,
                    // Container(
                    //   padding: EdgeInsets.all(5),
                    //   decoration: BoxDecoration(
                    //       border: Border.all(),
                    //       borderRadius: BorderRadius.circular(10)),
                    //   child: DropdownButtonHideUnderline(
                    //     child: DropdownButton<String>(
                    //       onChanged: (String? newValue) {
                    //         setState(() {
                    //           Statedrop = newValue!;
                    //         });
                    //       },
                    //       hint: Text('Select'),
                    //       icon: Icon(
                    //         Icons.keyboard_arrow_down,
                    //         color: Colors.grey,
                    //       ),
                    //       value: Statedrop,
                    //       isExpanded: true,
                    //       items: State.map<DropdownMenuItem<String>>(
                    //           (String Value) {
                    //         return DropdownMenuItem<String>(
                    //           value: Value,
                    //           child: Text(Value),
                    //         );
                    //       }).toList(),
                    //     ),
                    //   ),
                    // ),
                    // 2.h.heightBox,
                    // Text(
                    //   "District",
                    //   style: text6,
                    // ),
                    // 1.h.heightBox,
                    // Container(
                    //   padding: EdgeInsets.all(5),
                    //   decoration: BoxDecoration(
                    //       border: Border.all(),
                    //       borderRadius: BorderRadius.circular(10)),
                    //   child: DropdownButtonHideUnderline(
                    //     child: DropdownButton<String>(
                    //       onChanged: (String? newValue) {
                    //         setState(() {
                    //           Districdrop = newValue!;
                    //         });
                    //       },
                    //       hint: Text('Select'),
                    //       icon: Icon(
                    //         Icons.keyboard_arrow_down,
                    //         color: Colors.grey,
                    //       ),
                    //       value: Districdrop,
                    //       isExpanded: true,
                    //       items: District.map<DropdownMenuItem<String>>(
                    //           (String Value) {
                    //         return DropdownMenuItem<String>(
                    //           value: Value,
                    //           child: Text(Value),
                    //         );
                    //       }).toList(),
                    //     ),
                    //   ),
                    // ),
                    2.h.heightBox,
                    FormTextField(
                      controller: _signUpController.town,
                      hint: "",
                      inputName: "Town (Taluk)",
                    ),
                    2.h.heightBox,
                    FormTextField(
                      controller: _signUpController.village,
                      hint: "",
                      inputName: "Village",
                    ),
                    2.h.heightBox,
                    FormTextField(
                      controller: _signUpController.pincode,
                      hint: "",
                      inputName: "Pincode",
                    ),
                    2.h.heightBox,
                    FormTextField(
                      controller: _signUpController.mobile,
                      hint: "",
                      inputName: "Mobile Number",
                    ),
                    2.h.heightBox,
                    FormTextField(
                      controller: _signUpController.emergencyContact,
                      hint: "",
                      inputName: "Emergency Contact Number",
                    ),
                    // 2.h.heightBox,
                    // FormTextField(

                    //   hint: "",
                    //   inputName: "Native Place",
                    // ),
                    3.h.heightBox,
                    InkWell(
                      onTap: () {
                        Get.to(SignupScreen2());
                      },
                      child: Center(
                        child: Container(
                          height: 7.h,
                          width: 60.w,
                          decoration: BoxDecoration(
                              color: Color(0xff1A1242),
                              borderRadius: BorderRadius.circular(20.sp)),
                          child: Center(
                            child: Text(
                              "Continue",
                              style: text2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            4.h.heightBox,
          ],
        ).pSymmetric(
          h: 4.h,
        ),
      ),
    );
  }
}
