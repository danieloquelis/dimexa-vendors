import 'dart:async';
import 'package:dimexa_vendors/core/utils/app_exception/app_exception.dart';
import 'package:dimexa_vendors/core/utils/interceptor_error_handler/interceptor_error_handler.dart';
import 'package:dimexa_vendors/data/api/auth_api/auth_api.dart';
import 'package:dimexa_vendors/data/interceptors/auth_interceptor/auth_interceptor.dart';
import 'package:dimexa_vendors/data/models/backend_response/backend_response.dart';
import 'package:dimexa_vendors/data/models/session/session.dart';
import 'package:get/get.dart';

class AuthInterceptorImpl implements AuthInterceptor {
  final _api = Get.find<AuthAPI>();

  @override
  Future<Session?> login(String user, String password) async {
    final result = await _api.login(
      user: user,
      password: password
    );

    if (result.error == null) {
      BackendResponse<Session> response = BackendResponse<Session>.fromJson(result.data, Session.fromJsonModel);
      return response.data;
    }

    return Future.error(
      AppException(
        interceptorErrorHandler(
            result,
        )
      )
    );
  }


}