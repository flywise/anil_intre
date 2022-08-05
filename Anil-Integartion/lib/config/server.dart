import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';

class Client {
  static String token = "";
  Dio init() {
    Dio _dio = Dio();
    _dio.interceptors.add(ApiInterceptors());
    _dio.options.baseUrl = "http://mern.online:2998";

    return _dio;
  }
}

class ApiInterceptors extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    GetStorage box = GetStorage();
    var token = await box.read("token");
    if (token != null) {
      options.headers["Authorization"] = "Bearer " + token;
      log("on request ${"Bearer " + token}");
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);
  }
}
