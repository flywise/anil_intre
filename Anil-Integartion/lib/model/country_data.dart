


import 'dart:convert';

CountryData countryDataFromJson(String str) => CountryData.fromJson(json.decode(str));

String countryDataToJson(CountryData data) => json.encode(data.toJson());

class CountryData {
    CountryData({
        required this.countries,
    });

    List<Country> countries;

    factory CountryData.fromJson(Map<String, dynamic> json) => CountryData(
        countries: List<Country>.from(json["countries"].map((x) => Country.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "countries": List<dynamic>.from(countries.map((x) => x.toJson())),
    };
}

class Country {
    Country({
        required this.name,
        required this.code,
        required this.dialCode,
    });

    String name;
    String code;
    String dialCode;

    factory Country.fromJson(Map<String, dynamic> json) => Country(
        name: json["name"],
        code: json["code"],
        dialCode: json["dial_code"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "code": code,
        "dial_code": dialCode,
    };
}
