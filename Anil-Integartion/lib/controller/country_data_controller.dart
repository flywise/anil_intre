import 'dart:developer';

import 'package:community/config/provider/user/counrty_data_provider.dart';
import 'package:community/config/server.dart';
import 'package:community/model/country_data.dart';
import 'package:get/get.dart';

class CountryDataController extends GetxController {
  final countryList = <Country>[].obs;

  // RxString Countrydrop = 'Afghanistan'.obs;
  final selected = "Afghanistan".obs;
  bool val = true;

  void setSelected(String value) {
    selected.value = value;
  }

  callGetCountryData() {
    Client cclient = Client();
    CountryDataProvider productsProvider =
        CountryDataProvider(client: cclient.init());
    try {
      productsProvider.getallCountyDataProvider().then(
        (value) {
          log("value $value");
          countryList.value = (value.countries);
        },
      );
    } catch (e) {
      log("e $e");
    }
  }

  @override
  void onInit() {
    callGetCountryData();

    super.onInit();
  }
}
