import 'dart:async';
import 'dart:io';

import 'package:dimexa_vendors/data/api/auth_api/auth_api.dart';
import 'package:dimexa_vendors/data/interceptors/auth_interceptor/auth_interceptor.dart';
import 'package:get/get.dart';

class AuthInterceptorImpl implements AuthInterceptor {
  final AuthAPI _api = Get.find<AuthAPI>();

  @override
  Future<String?> get accessToken async {
    final result = await _api.login("hola", "hola");
    if (result.error == null) {
      //everything is ok
    }

    if (result.statusCode == 400) {
      //server error
    }

    final error = result.error!.exception;
    if (error is SocketException) {
      //network error - internet problems
    }

    if (error is TimeoutException) {
      //network error - timeout
    }

    //if there is not error catch by previous "if" then the error is unknown
    return result.data;
  }
}