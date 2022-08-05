import 'dart:convert';

import 'package:community/model/country_data.dart';
import 'package:dio/dio.dart';

class CountryDataProvider {
  Dio client;

  CountryDataProvider({
    required this.client,
  });

  Future<CountryData> getallCountyDataProvider() async {
    try {
      Response r = await client.get("/api/dropdown/getAllCountries");

      if (r.statusCode == 200) {
        print(r.data);
        return countryDataFromJson(jsonEncode(r.data));
      } else {
        return Future.error(r.data["message"]);
      }
    } on DioError catch (e) {
      print(e.response!.data);
      return Future.error(e.message);
    }
  }
}
