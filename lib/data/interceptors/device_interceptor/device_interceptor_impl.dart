import 'dart:async';

import 'package:dimexa_vendors/core/utils/app_exception/app_exception.dart';
import 'package:dimexa_vendors/core/utils/interceptor_error_handler/interceptor_error_handler.dart';
import 'package:dimexa_vendors/data/api/device_api/device_api.dart';
import 'package:dimexa_vendors/data/interceptors/device_interceptor/device_interceptor.dart';
import 'package:dimexa_vendors/data/repositories/session_repository/session_repository_impl.dart';
import 'package:get/get.dart';

class DeviceInterceptorImpl implements DeviceInterceptor {
  final DeviceAPI _api = Get.find<DeviceAPI>();
  final SessionRepositoryImpl _sessionRepository = Get.find<SessionRepositoryImpl>();



  @override
  Future validateDevice(String deviceToken) async {
    final result = await _api.validateDevice(
      deviceToken: deviceToken
    );

    if (result.error == null) {
      return result.data == "True";
    }

    return Future.error(AppException(interceptorErrorHandler(result)));
  }

}