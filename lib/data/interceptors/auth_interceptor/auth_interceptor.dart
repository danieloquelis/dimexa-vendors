import 'dart:async';
import 'package:dimexa_vendors/core/utils/app_exception/app_exception.dart';
import 'package:dimexa_vendors/core/utils/interceptor_error_handler/interceptor_error_handler.dart';
import 'package:dimexa_vendors/data/api/auth_api/auth_api.dart';
import 'package:dimexa_vendors/data/models/backend_response/backend_response.dart';
import 'package:dimexa_vendors/data/models/session/session.dart';
import 'package:get/get.dart';

class AuthInterceptor {
  final _api = Get.find<AuthAPI>();

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

  Future<bool?> resetPassword(String user) async {
    final result = await _api.resetPassword(
        user: user,
    );

    if (result.error != null) {
      return true;
    }

    return Future.error(
        AppException(
            interceptorErrorHandler(
              result,
            )
        )
    );
  }

  Future<String?> resetPasswordAndValidateCode(String user, String code) async {
    final result = await _api.resetPasswordAndValidateCode(
      user: user,
      code: code
    );

    if (result.error != null) {
      BackendResponse<String> response = BackendResponse<String>.fromJson(result.data, String);
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

  Future<Session?> refreshSession(String user) async {
    final result = await _api.refreshToken(
        user: user,
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